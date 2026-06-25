# doctor_cl.ps1 - domain probe for `ratchet doctor`: is MSVC cl reachable through vcvars32? Exit 0 if
# yes, 1 if not. Referenced from ratchet.json requirements as { "name": "MSVC cl", "tool": "doctor_cl" }.
$vcvars = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars32.bat"
if (-not (Test-Path $vcvars)) { Write-Output "vcvars32 not found"; exit 1 }
$cl = cmd /c "`"$vcvars`" >nul 2>&1 && where cl 2>nul"
if ($cl) { Write-Output "cl reachable"; exit 0 }
Write-Output "vcvars ran but cl not found"; exit 1
