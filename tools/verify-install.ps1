#Requires -Version 5.1
param(
  [string] $GameDir = "D:\SteamLibrary\steamapps\common\The King of Fighters'98 Ultimate Match"
)

$ErrorActionPreference = "Continue"
Write-Host "== verify-install ==" -ForegroundColor Cyan

$need = @{
  "dinput8.dll" = "proxy DirectInput (selector)"
  "xinput1_4.dll" = "proxy XInput (selector / Proton)"
  "KofVsSelector.dll" = "selector de controles"
  "kom_module.dll" = "King of Moves (escenarios 3D)"
}

$ok = $true
foreach ($k in $need.Keys) {
  $p = Join-Path $GameDir $k
  if (Test-Path -LiteralPath $p) {
    $h = (Get-FileHash -LiteralPath $p -Algorithm SHA256).Hash.Substring(0, 16)
    Write-Host "[OK] $k  ($($need[$k]))  sha16=$h  size=$((Get-Item -LiteralPath $p).Length)"
  } else {
    Write-Host "[FALTA] $k  ($($need[$k]))" -ForegroundColor Red
    $ok = $false
  }
}

$optional = @("Kof98Bgm.dll", "kom_settings.ini", "kofvs.ini", "Select")
foreach ($k in $optional) {
  $p = Join-Path $GameDir $k
  if (Test-Path -LiteralPath $p) { Write-Host "[opt] $k presente" }
  else { Write-Host "[opt] $k ausente" -ForegroundColor DarkYellow }
}

# bg_bin debería crecer tras importar ISO
$bgBin = Join-Path $GameDir "Data\game\bg_bin"
if (Test-Path $bgBin) {
  $n = (Get-ChildItem $bgBin -File -Recurse -ErrorAction SilentlyContinue | Measure-Object).Count
  Write-Host "Data/game/bg_bin archivos: $n  (vanilla ~3; con ISO PS2 mucho más)"
  if ($n -le 5) {
    Write-Host "AVISO: bg_bin parece incompleto — falta importar ISO o falló kom-setup." -ForegroundColor Yellow
    $ok = $false
  }
}

if ($ok) { Write-Host "Verificación básica OK." -ForegroundColor Green; exit 0 }
else { Write-Host "Verificación incompleta." -ForegroundColor Red; exit 1 }
