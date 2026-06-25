# plan_units.ps1 - turn a build-plan JSON (from compose's plan step, on stdin) into a foreach worklist,
# IN DEPENDENCY ORDER, one line "<targetpath> <specfile>". The entry unit (role behavior/gui) is the
# wiring root; every other unit is a library file in the folder its spec declared (`module:`, default
# Core). compose's foreach feeds each line to add_unit (split path/specfile).
# CHANGE_ME: set $ext to your language's source extension and $entry to your entry-file path. (For a
# header+source language like C++, map components to one file and emit the pair in add_unit - see
# cpp/tools/plan_units.ps1.)
$ErrorActionPreference = "Stop"

$ext = 'txt'                      # CHANGE_ME: your source extension, e.g. 'cs' or 'cpp'
$entry = 'src/main.' + $ext       # CHANGE_ME: your entry file, e.g. 'src/Program.cs' or 'src/main.cpp'

$sin = [Console]::OpenStandardInput(); $ms = New-Object System.IO.MemoryStream; $sin.CopyTo($ms); $bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) { $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] } }
$plan = [System.Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json

foreach ($u in @($plan.units)) {
    if ($u.role -eq 'behavior' -or $u.role -eq 'gui') {
        $path = $entry
    } else {
        $mod = 'Core'
        if ($u.module) { $m = ([string]$u.module).Trim().Trim('/').Trim('\'); if ($m) { $mod = $m } }
        $path = 'src/' + $mod + '/' + $u.name + '.' + $ext
    }
    Write-Output ($path + ' ' + $u.spec)
}
exit 0
