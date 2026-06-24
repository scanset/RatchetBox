# project_api.ps1 - CHANGE_ME (domain-specific): emit the PUBLIC API surface of the project's existing
# composed units, so a new unit calls them with the EXACT names/signatures instead of inventing them
# (this is what closes the multi-reference drift in composition). The right form depends on your language:
#   - C#:  regex-extract public types + ctor/method signatures from src\**\*.cs   (see dotnet4-x/tools/project_api.ps1)
#   - C++: just surface the unit headers verbatim - the .h IS the contract        (see cpp/tools/project_api.ps1)
# Arg: proj. ALWAYS exit 0 - an empty surface is correct for the first unit (nothing built yet).
param([string] $Proj)
$ErrorActionPreference = "Stop"

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output "(no project)"; exit 0 }

# CHANGE_ME: replace this with your language's API extraction (see dotnet4-x [regex] / cpp [headers]).
Write-Output "(project_api: CHANGE_ME - emit the existing units' public API for your language)"
exit 0
