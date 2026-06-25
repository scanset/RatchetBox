# plan_units.ps1 - turn a build-plan JSON (from compose's plan step, on stdin) into a foreach worklist,
# IN DEPENDENCY ORDER, one line "<targetpath> <specfile>". The entry unit (role behavior/gui) is the
# wiring root -> src/main.cpp; every other unit is a component -> src/core/<Name>.cpp (it carries a
# companion src/core/<Name>.h declaration, emitted together; cl globs every .cpp so each compiles + links
# on its own - real separate compilation). compose's foreach feeds each line to add_unit (split
# path/specfile). Components are flat under src/core so a cross-unit #include "Sibling.h" resolves
# directly; module subfolders would need relative-include handling, a follow-on.
$ErrorActionPreference = "Stop"

$sin = [Console]::OpenStandardInput(); $ms = New-Object System.IO.MemoryStream; $sin.CopyTo($ms); $bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) { $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] } }
$plan = [System.Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json

foreach ($u in @($plan.units)) {
    if ($u.role -eq 'behavior' -or $u.role -eq 'gui') {
        $path = 'src/main.cpp'
    } else {
        $path = 'src/core/' + $u.name + '.cpp'
    }
    Write-Output ($path + ' ' + $u.spec)
}
exit 0
