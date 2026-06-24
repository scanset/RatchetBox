# project_api.ps1 - emit the PUBLIC API of a composed C++ project's existing units: the header files
# under src/core (excluding the _units.h aggregator), each labeled with its src-relative path. In C++ the
# header IS the contract (declarations + inline/template defs), so - unlike the C# ratchet's regex
# extractor - we surface the headers verbatim; the model sees the exact types/signatures AND what to
# #include. A composed unit binds this to call existing units correctly instead of inventing them. Arg:
# proj. Always exits 0 (an empty surface is fine for the first unit).
param([string] $Proj)
$ErrorActionPreference = "Stop"

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output "(no project)"; exit 0 }
$srcDir = Join-Path $root "src"
$coreDir = Join-Path $srcDir "core"
if (-not (Test-Path $coreDir)) { Write-Output "(no unit headers yet)"; exit 0 }

$hdrs = @(Get-ChildItem $coreDir -Recurse -File -Include *.h,*.hpp -ErrorAction SilentlyContinue | Where-Object { $_.Name -ne '_units.h' } | Sort-Object FullName)
if ($hdrs.Count -eq 0) { Write-Output "(no unit headers yet)"; exit 0 }

$out = New-Object System.Text.StringBuilder
foreach ($h in $hdrs) {
    $rel = $h.FullName.Substring($srcDir.Length).TrimStart('\', '/').Replace('\', '/')
    [void]$out.AppendLine("=== " + $rel + " ===")
    [void]$out.AppendLine((Get-Content -Raw $h.FullName).TrimEnd())
    [void]$out.AppendLine("")
}
Write-Output $out.ToString().TrimEnd()
exit 0
