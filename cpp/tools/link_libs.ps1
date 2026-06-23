# link_libs.ps1 - declare extra import libraries for a project so build_project links them. Merges
# (dedups) into project.json `libs`. Names without .lib get it appended. Use when a file pulls in an
# API the default libs do not cover (e.g. ws2_32.lib for Winsock, d3d12.lib + dxgi.lib for Direct3D).
#   tools/link_libs.ps1 -Proj MyApp -Libs "ws2_32.lib mswsock.lib"
param([string] $Proj, [string] $Libs)
$ErrorActionPreference = "Stop"
if (-not $Proj -or -not $Libs) { Write-Output 'usage: link_libs -Proj <name> -Libs "ws2_32.lib d3d12.lib"'; exit 1 }

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

$pj = Join-Path $root "project.json"
$cfg = Get-Content -Raw $pj | ConvertFrom-Json
$cur = @(); if ($cfg.libs) { $cur = @($cfg.libs) }
$new = @($Libs -split '[\s,]+' | Where-Object { $_ } | ForEach-Object { if ($_ -match '\.lib$') { $_ } else { $_ + ".lib" } })
$merged = @($cur + $new | Select-Object -Unique)

if ($cfg.PSObject.Properties.Name -contains 'libs') { $cfg.libs = $merged }
else { $cfg | Add-Member -NotePropertyName libs -NotePropertyValue $merged }

[System.IO.File]::WriteAllText($pj, ($cfg | ConvertTo-Json -Depth 6), (New-Object System.Text.UTF8Encoding $false))
Write-Output ("OK: libs = " + ($merged -join ", "))
exit 0
