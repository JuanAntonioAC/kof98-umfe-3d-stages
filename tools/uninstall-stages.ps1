#Requires -Version 5.1
param(
  [string] $GameDir = "D:\SteamLibrary\steamapps\common\KOF98UMFE",
  [string] $RealGameDir = "D:\SteamLibrary\steamapps\common\The King of Fighters'98 Ultimate Match",
  [string] $KomSetup = "D:\KOF98-UMFE-3D-Stages\vendor\king-of-moves\1.10.2\setup\kom-setup-1.10.2-windows-x86_64.exe",
  [switch] $KeepSelector,
  [switch] $RemoveSelector
)

$ErrorActionPreference = "Stop"
Write-Host "== Desinstalación King of Moves ==" -ForegroundColor Cyan

if (-not (Test-Path -LiteralPath $GameDir)) {
  cmd /c "mklink /J `"$GameDir`" `"$RealGameDir`"" | Out-Host
}

& (Join-Path $PSScriptRoot "backup-game.ps1") -Label "pre-kom-uninstall" | Out-Null

$p = Start-Process -FilePath $KomSetup -ArgumentList @("--uninstall", $GameDir) -Wait -PassThru -NoNewWindow
Write-Host "kom-setup --uninstall exit=$($p.ExitCode)"

# Quitar módulo encadenado si quedó
$komModule = Join-Path $RealGameDir "kom_module.dll"
if (Test-Path -LiteralPath $komModule) {
  Remove-Item -LiteralPath $komModule -Force
  Write-Host "Eliminado kom_module.dll"
}

if ($RemoveSelector) {
  foreach ($f in @("dinput8.dll", "xinput1_4.dll", "KofVsSelector.dll", "Kof98Bgm.dll", "kofvs.ini", "kofvs-loader.log", "kofvs.log")) {
    $p = Join-Path $RealGameDir $f
    if (Test-Path -LiteralPath $p) { Remove-Item -LiteralPath $p -Force; Write-Host "Eliminado $f" }
  }
  $sel = Join-Path $RealGameDir "Select"
  if (Test-Path -LiteralPath $sel) { Remove-Item -LiteralPath $sel -Recurse -Force }
} elseif ($KeepSelector) {
  Write-Host "Selector conservado (KeepSelector)."
} else {
  # Por defecto: reponer proxies del selector sin KoM
  $dist = "D:\KOF-VS-Controller-Selector\dist"
  if (Test-Path (Join-Path $dist "dinput8.dll")) {
    Copy-Item (Join-Path $dist "dinput8.dll") (Join-Path $RealGameDir "dinput8.dll") -Force
    Copy-Item (Join-Path $dist "xinput1_4.dll") (Join-Path $RealGameDir "xinput1_4.dll") -Force
    Copy-Item (Join-Path $dist "KofVsSelector.dll") (Join-Path $RealGameDir "KofVsSelector.dll") -Force
    Write-Host "Proxies del selector restaurados (sin kom_module)."
  }
}

Write-Host "También puedes usar Steam > Verificar integridad de archivos del juego." -ForegroundColor Yellow
