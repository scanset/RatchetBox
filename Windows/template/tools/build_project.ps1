# build_project.ps1 - CHANGE_ME: THE ORACLE. Compile/build the WHOLE project (every source under src\)
# to its output with your toolchain, and let the EXIT CODE be the verdict: 0 = built, non-zero = failed.
# Every flow gates on this, so it must be deterministic and honest. Resolve Proj as a path (a folder with
# project.json) or a bare name under workspaces\. On success print "OK: built <out>" and exit 0; on failure
# print the compiler diagnostics and exit 1.
#
# Real implementations to copy from:
#   RatchetBox/dotnet4-x/tools/build_project.ps1  (in-box csc over src\**\*.cs)
#   RatchetBox/cpp/tools/build_project.ps1         (MSVC cl over src\**\*.cpp, vcvars cached)
param([string] $Proj)
$ErrorActionPreference = "Stop"

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

Write-Output "build_project: CHANGE_ME - implement your whole-project build here (compile src\ -> dist\, exit 0 on success)."
Write-Output "See RatchetBox/dotnet4-x (csc) or RatchetBox/cpp (cl) for a working version."
exit 1
