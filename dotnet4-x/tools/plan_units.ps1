# plan_units.ps1 - turn a build-plan JSON (from the `plan` flow, on stdin) into a foreach worklist:
# one line per unit, IN DEPENDENCY ORDER, "<targetpath> <specfile>". The entry unit (role behavior or
# gui) targets src/Program.cs; every other unit targets src/<Name>.cs. The compose foreach feeds each
# line to add_unit as its $input (split path/specfile).
$ErrorActionPreference = "Stop"

$sin = [Console]::OpenStandardInput(); $ms = New-Object System.IO.MemoryStream; $sin.CopyTo($ms); $bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) { $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] } }
$plan = [System.Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json

foreach ($u in @($plan.units)) {
    $path = if ($u.role -eq 'behavior' -or $u.role -eq 'gui') { 'src/Program.cs' } else { 'src/' + $u.name + '.cs' }
    Write-Output ($path + ' ' + $u.spec)
}
exit 0
