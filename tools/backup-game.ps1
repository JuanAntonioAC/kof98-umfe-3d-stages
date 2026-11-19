#Requires -Version 5.1
param(
  [string] $GameDir = "D:\SteamLibrary\steamapps\common\The King of Fighters'98 Ultimate Match",
  [string] $BackupRoot = "D:\KOF98-UMFE-3D-Stages\backups",
  [string] $Label = "manual"
)

$ErrorActionPreference = "Stop"
$stamp = Get-Date -Format "yyyy-MM-dd_HHmmss"
$dest = Join-Path $BackupRoot "$Label-$stamp"
New-Item -ItemType Directory -Force -Path $dest | Out-Null

$top = @(
  "KingOfFighters98UM_x64.exe", "KingOfFighters98UM.exe",
  "d3dx9_43.dll", "steam_api64.dll", "steam_api.dll",
  "xinput1_3.dll", "XInput1_4.dll", "xinput1_4.dll",
  "dinput8.dll", "kom_module.dll", "KofVsSelector.dll", "Kof98Bgm.dll",
  "kofvs.ini", "kom_settings.ini", "kom_proxy.log", "kofvs-loader.log"
)

foreach ($f in $top) {
  $src = Join-Path $GameDir $f
  if (Test-Path -LiteralPath $src) {
    Copy-Item -LiteralPath $src -Destination (Join-Path $dest $f) -Force
  }
}

$dataBits = @("~options.bin", "strings.txt")
New-Item -ItemType Directory -Force -Path (Join-Path $dest "Data") | Out-Null
foreach ($f in $dataBits) {
  $src = Join-Path $GameDir "Data\$f"
  if (Test-Path -LiteralPath $src) {
    Copy-Item -LiteralPath $src -Destination (Join-Path $dest "Data\$f") -Force
  }
}

# Snapshot de hashes de todo lo que hay en la raíz del juego
$lines = @()
Get-ChildItem -LiteralPath $GameDir -File | ForEach-Object {
  $h = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash
  $lines += "{0}`t{1}`t{2}" -f $_.Name, $_.Length, $h
}
$lines | Set-Content -Encoding UTF8 (Join-Path $dest "MANIFEST_SHA256.txt")

Write-Host "Backup: $dest"
Write-Output $dest
