# read_specs.ps1 - read every .spec file in a directory and print their contents labeled by filename,
# for the `plan` flow to consume. The model reads these (unordered, possibly inconsistent) and infers a
# build plan. Arg: dir (relative to the ratchet root, or absolute).
param([string] $Dir)
$ErrorActionPreference = "Stop"

$d = $Dir
if (-not [System.IO.Path]::IsPathRooted($d)) { $d = Join-Path (Get-Location).Path $d }
if (-not (Test-Path $d)) { Write-Output ("spec dir not found: " + $Dir); exit 1 }

if ((Get-Item $d).PSIsContainer) {
    $files = @(Get-ChildItem $d -Filter *.spec -File | Sort-Object Name)
    if ($files.Count -eq 0) { Write-Output ("no .spec files in: " + $Dir); exit 1 }
} else {
    $files = @(Get-Item $d)   # a single .spec file
}

$out = New-Object System.Text.StringBuilder
foreach ($f in $files) {
    [void]$out.AppendLine("=== " + $f.Name + " ===")
    [void]$out.AppendLine((Get-Content -Raw $f.FullName).TrimEnd())
    [void]$out.AppendLine("")
}
Write-Output $out.ToString().TrimEnd()
exit 0
