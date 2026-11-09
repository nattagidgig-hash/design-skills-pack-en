# Usage: .\install.ps1 [-Target claude|codex|antigravity|hermes|gemini|agents|all]
param([string]$Target = "all")
$h = $env:USERPROFILE
$T = @{
 claude="$h\.claude\skills"; codex="$h\.codex\skills"
 antigravity="$h\.gemini\antigravity\skills"; gemini="$h\.gemini\skills"
 hermes="$env:LOCALAPPDATA\hermes\skills\creative"; agents="$h\.agents\skills"
}
foreach ($k in $T.Keys) {
  $dest = $T[$k]
  if ($Target -eq "all") { if (-not (Test-Path (Split-Path $dest -Parent))) { continue } }
  elseif ($Target -ne $k) { continue }
  New-Item -ItemType Directory -Force $dest | Out-Null
  Get-ChildItem -Directory "$PSScriptRoot\0*" | ForEach-Object {
    Remove-Item -Recurse -Force "$dest\$($_.Name)" -ErrorAction SilentlyContinue
    Copy-Item -Recurse $_.FullName "$dest\$($_.Name)"
  }
  Write-Host "installed -> $dest"
}
