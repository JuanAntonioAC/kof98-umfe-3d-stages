#Requires -Version 5.1
<#
.SYNOPSIS
  Instala King of Moves (escenarios 3D) + reencadena el selector de controles.

.PARAMETER IsoPath
  Ruta a tu ISO PS2 de KOF '98 Ultimate Match (obligatoria).

.PARAMETER GameDir
  Carpeta del juego. Por defecto usa el junction sin apóstrofe.

.PARAMETER StagesOnly
  Tras instalar, desinstala features KoM no pedidas (colour, gallery, moves, etc.).
#>
param(
  [Parameter(Mandatory = $true)]
  [string] $IsoPath,
  [string] $GameDir = "D:\SteamLibrary\steamapps\common\KOF98UMFE",
  [string] $RealGameDir = "D:\SteamLibrary\steamapps\common\The King of Fighters'98 Ultimate Match",
  [string] $SelectorDist = "D:\KOF-VS-Controller-Selector\dist",
  [string] $KomRoot = "D:\KOF98-UMFE-3D-Stages\vendor\king-of-moves\1.10.2",
  [switch] $StagesOnly
)

$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path $PSScriptRoot -Parent
if (-not $ProjectRoot) { $ProjectRoot = "D:\KOF98-UMFE-3D-Stages" }

function Assert-File($path, $label) {
  if (-not (Test-Path -LiteralPath $path)) { throw "Falta $label : $path" }
}

Write-Host "== KOF98 UMFE 3D Stages — install ==" -ForegroundColor Cyan

Assert-File $IsoPath "ISO PS2"
Assert-File $RealGameDir "carpeta del juego"
Assert-File (Join-Path $SelectorDist "dinput8.dll") "dinput8 del selector"
Assert-File (Join-Path $SelectorDist "KofVsSelector.dll") "KofVsSelector.dll"

$setup = Join-Path $KomRoot "setup\kom-setup-1.10.2-windows-x86_64.exe"
$komDll = Join-Path $KomRoot "manual-dll\dinput8.dll"
Assert-File $setup "kom-setup"
Assert-File $komDll "módulo KoM"

# Junction sin apóstrofe (el CLI de kom-setup falla con Fighters'98)
if (-not (Test-Path -LiteralPath $GameDir)) {
  cmd /c "mklink /J `"$GameDir`" `"$RealGameDir`"" | Out-Host
}

# kom-setup también se rompe con comas/espacios en la ISO: usar copia limpia
$isoClean = Join-Path $ProjectRoot "ps2-import\kof98um.iso"
$isoItem = Get-Item -LiteralPath $IsoPath
if ($isoItem.FullName -ne (Resolve-Path -LiteralPath $isoClean -ErrorAction SilentlyContinue)) {
  if ($IsoPath -match '[,\s]') {
    Write-Host "ISO con caracteres problemáticos; copiando a $isoClean ..."
    New-Item -ItemType Directory -Force -Path (Split-Path $isoClean) | Out-Null
    if (-not (Test-Path -LiteralPath $isoClean) -or (Get-Item -LiteralPath $isoClean).Length -ne $isoItem.Length) {
      Copy-Item -LiteralPath $IsoPath -Destination $isoClean -Force
    }
    $IsoPath = $isoClean
  }
}

$isoHash = (Get-FileHash -LiteralPath $IsoPath -Algorithm SHA256).Hash
Write-Host "ISO SHA256: $isoHash"
Write-Host "GameDir: $GameDir"

Write-Host "`n[1/4] Respaldo previo..." -ForegroundColor Yellow
& (Join-Path $PSScriptRoot "backup-game.ps1") -Label "pre-kom-install"

Write-Host "`n[2/4] kom-setup --install (importa PS2 + módulo)..." -ForegroundColor Yellow
$p = Start-Process -FilePath $setup -ArgumentList @("--install", $GameDir, $IsoPath) -Wait -PassThru -NoNewWindow
if ($p.ExitCode -ne 0) {
  throw "kom-setup --install falló con código $($p.ExitCode). Revisa la ISO y kom_proxy.log si existe."
}

if ($StagesOnly) {
  Write-Host "`n[2b] Quitando features no pedidas (conserva 3D/background)..." -ForegroundColor Yellow
  $remove = @("colour", "music", "neogeo", "moves", "song", "stats", "hitboxes", "gallery", "bgmrows")
  $p2 = Start-Process -FilePath $setup -ArgumentList (@("--uninstall", $GameDir) + $remove) -Wait -PassThru -NoNewWindow
  Write-Host "uninstall selectivo exit=$($p2.ExitCode)"
}

Write-Host "`n[3/4] Encadenando con KofVsSelector..." -ForegroundColor Yellow
$gameDinput = Join-Path $RealGameDir "dinput8.dll"
$komModule = Join-Path $RealGameDir "kom_module.dll"

if (Test-Path -LiteralPath $gameDinput) {
  Copy-Item -LiteralPath $gameDinput -Destination $komModule -Force
  Write-Host "KoM dinput8 -> kom_module.dll"
} else {
  Copy-Item -LiteralPath $komDll -Destination $komModule -Force
  Write-Host "KoM manual dll -> kom_module.dll (fallback)"
}

# Restaurar proxies del selector (gana DirectInput/XInput)
Copy-Item (Join-Path $SelectorDist "dinput8.dll") (Join-Path $RealGameDir "dinput8.dll") -Force
Copy-Item (Join-Path $SelectorDist "xinput1_4.dll") (Join-Path $RealGameDir "xinput1_4.dll") -Force
Copy-Item (Join-Path $SelectorDist "KofVsSelector.dll") (Join-Path $RealGameDir "KofVsSelector.dll") -Force
if (Test-Path (Join-Path $SelectorDist "Kof98Bgm.dll")) {
  Copy-Item (Join-Path $SelectorDist "Kof98Bgm.dll") (Join-Path $RealGameDir "Kof98Bgm.dll") -Force
}
if (Test-Path (Join-Path $SelectorDist "kofvs.ini")) {
  Copy-Item (Join-Path $SelectorDist "kofvs.ini") (Join-Path $RealGameDir "kofvs.ini") -Force
}
$selectSrc = Join-Path $SelectorDist "Select"
if (Test-Path $selectSrc) {
  Copy-Item $selectSrc (Join-Path $RealGameDir "Select") -Recurse -Force
}

Write-Host "`n[4/4] Verificación..." -ForegroundColor Yellow
& (Join-Path $PSScriptRoot "verify-install.ps1") -GameDir $RealGameDir

Write-Host "`nListo. Arranca el juego, ve a Help & Options > Settings > GRAPHIC SETTING > BACKGROUND = 3D." -ForegroundColor Green
Write-Host "Log útil: kom_proxy.log y kofvs-loader.log en la carpeta del juego."
