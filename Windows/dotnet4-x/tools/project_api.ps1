# project_api.ps1 - emit a compact PUBLIC API summary of a project's existing src/**/*.cs: the type
# names + their public constructors, methods, and fields/properties (interface members too). A composed
# unit's generate binds this so it calls the EXACT existing signatures verbatim instead of inventing
# method names or wrong constructor arities (the multi-reference drift). Heuristic line-scan - no Roslyn
# (pre-Roslyn csc, no SDK). Arg: proj. Always exits 0 (an empty surface is fine for the first unit).
param([string] $Proj)
$ErrorActionPreference = "Stop"

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output "(no project)"; exit 0 }
$srcDir = Join-Path $root "src"
if (-not (Test-Path $srcDir)) { Write-Output "(no src yet)"; exit 0 }

$out = New-Object System.Text.StringBuilder
foreach ($f in @(Get-ChildItem $srcDir -Recurse -Filter *.cs -File | Sort-Object FullName)) {
    $cur = $null; $iface = $false
    foreach ($raw in (Get-Content $f.FullName)) {
        $t = $raw.Trim()
        if ($t -match '^(?:public |internal |sealed |static |abstract |partial )*(class|interface|struct|enum)\s+([A-Za-z_]\w*)') {
            $cur = $matches[2]; $iface = ($matches[1] -eq 'interface')
            [void]$out.AppendLine($matches[1] + ' ' + $cur)
            continue
        }
        if (-not $cur) { continue }
        # constructor: public <Type>(...)
        if ($t -match ('^public\s+' + [regex]::Escape($cur) + '\s*\(([^)]*)\)')) {
            [void]$out.AppendLine('  ' + $cur + '(' + ($matches[1].Trim()) + ')'); continue
        }
        if ($iface) {
            # interface members carry no access modifier: <ret> <name>(...);
            if ($t -match '^([A-Za-z_][\w<>\[\],\.\s]*?)\s+([A-Za-z_]\w*)\s*\(([^)]*)\)\s*;') {
                [void]$out.AppendLine('  ' + $matches[1].Trim() + ' ' + $matches[2] + '(' + $matches[3].Trim() + ')'); continue
            }
        } else {
            # public method: public [mods] <ret> <name>(...)
            if ($t -match '^public\s+(?:static |virtual |override |sealed |abstract )*([A-Za-z_][\w<>\[\],\.\s]*?)\s+([A-Za-z_]\w*)\s*\(([^)]*)\)') {
                if ($matches[2] -ne $cur) { [void]$out.AppendLine('  ' + $matches[1].Trim() + ' ' + $matches[2] + '(' + $matches[3].Trim() + ')') }
                continue
            }
            # public field / auto-property: public <type> <name> ;|=|{
            if ($t -match '^public\s+([A-Za-z_][\w<>\[\],\.]*)\s+([A-Za-z_]\w*)\s*(;|=|\{)') {
                [void]$out.AppendLine('  field ' + $matches[1] + ' ' + $matches[2]); continue
            }
        }
    }
}
$s = $out.ToString().TrimEnd()
if ($s.Length -eq 0) { Write-Output '(no public types yet)' } else { Write-Output $s }
exit 0
