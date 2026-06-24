# plan_units.ps1 - turn a build-plan JSON (from the `plan` flow, on stdin) into a foreach worklist:
# one line per unit, IN DEPENDENCY ORDER, "<targetpath> <specfile>". The entry unit (role behavior or
# gui) targets src/Program.cs; every other unit targets src/<Name>.cs. The compose foreach feeds each
# line to add_unit as its $input (split path/specfile).
$ErrorActionPreference = "Stop"

$sin = [Console]::OpenStandardInput(); $ms = New-Object System.IO.MemoryStream; $sin.CopyTo($ms); $bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) { $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] } }
$plan = [System.Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json

foreach ($u in @($plan.units)) {
    # entry unit (behavior/gui) is the wiring root -> src/Program.cs. Every other unit goes in the folder
    # its spec declared (`module:`, carried through the plan); default to Core when none was declared.
    # stage_and_build mkdirs the target on demand, so the scaffold ships no empty dirs and files land in
    # the folder the author chose. (Namespace stays flat `App` - folders organize, the namespace doesn't.)
    if ($u.role -eq 'behavior' -or $u.role -eq 'gui') {
        $path = 'src/Program.cs'
    } else {
        $mod = 'Core'
        if ($u.module) { $m = ([string]$u.module).Trim().Trim('/').Trim('\'); if ($m) { $mod = $m } }
        $path = 'src/' + $mod + '/' + $u.name + '.cs'
    }
    Write-Output ($path + ' ' + $u.spec)
}
exit 0
