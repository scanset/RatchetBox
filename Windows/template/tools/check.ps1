# check.ps1 - CHANGE_ME: the SINGLE-FILE oracle for the one-off `generate` flow (no project). Read a code
# snippet on stdin and check it with your toolchain WITHOUT building a whole project - a syntax/semantic
# compile of one file (e.g. csc /t:library, cl /Zs, a parser). Exit 0 = ok, non-zero = rejected (the flow
# repairs on non-zero). Strip the UTF-8 BOM from stdin (read raw bytes).
#
# Real implementations to copy from:
#   RatchetBox/dotnet4-x/tools/csc_check.ps1   (in-box csc, single file)
#   RatchetBox/cpp/tools/cl_check.ps1          (MSVC cl /Zs, single unit)
param()
$ErrorActionPreference = "Stop"

$stdin = [Console]::OpenStandardInput(); $ms = New-Object System.IO.MemoryStream; $stdin.CopyTo($ms); $bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) { $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] } }
$code = [System.Text.Encoding]::UTF8.GetString($bytes)

Write-Output "check: CHANGE_ME - syntax/compile-check one file with your toolchain (exit 0 = ok)."
Write-Output "See RatchetBox/dotnet4-x/tools/csc_check.ps1 or cpp/tools/cl_check.ps1 for a working version."
exit 1
