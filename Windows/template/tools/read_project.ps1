# read_project.ps1 - the context loader (the "memory read" for a project). Emits ONE text blob for
# grounding/status: PROJECT.md, project.json, the src tree (each file with its recorded role), and a
# manifest-drift check (disk vs project.json.files). -Include all also dumps the contents of every src
# file. Language-agnostic: it lists EVERY file under src\ (no extension filter). Backs add_file/add_unit
# and /project.   tools/read_project.ps1 MyApp [all]
param([string] $Proj, [string] $Include = "default")

if (-not $Proj) { Write-Output "usage: project <name>"; exit 1 }
$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }
$rootFull = (Resolve-Path $root).Path
if ($Include -ne "all") { $Include = "default" }   # tolerate an unfilled {include}

$sb = New-Object System.Text.StringBuilder
function Add($s) { [void]$sb.AppendLine($s) }

# --- PROJECT.md (narrative memory) ---
$pmd = Join-Path $root "PROJECT.md"
if (Test-Path $pmd) { Add "=== PROJECT.md ==="; Add ((Get-Content -Raw $pmd).TrimEnd()); Add "" }

# --- project.json (machine memory) --- (use $meta, not the [string]-typed $Proj param, or the parsed
# object gets coerced back to a string)
$pj = Join-Path $root "project.json"
$json = Get-Content -Raw $pj
$meta = $json | ConvertFrom-Json
Add "=== project.json ==="; Add ($json.TrimEnd()); Add ""

# --- src tree with roles ---
Add "=== src tree (path - role) ==="
$roleOf = @{}
if ($meta.files) { foreach ($f in $meta.files) { $roleOf[($f.path -replace '\\', '/')] = $f.role } }
$srcDir = Join-Path $root "src"
$onDisk = @()
if (Test-Path $srcDir) {
    Get-ChildItem -Recurse -File $srcDir | ForEach-Object {
        $rel = $_.FullName.Substring($rootFull.Length).TrimStart('\', '/') -replace '\\', '/'
        $onDisk += $rel
        $role = if ($roleOf.ContainsKey($rel)) { $roleOf[$rel] } else { "(no role recorded)" }
        Add ("  " + $rel + "  -  " + $role)
    }
}
Add ""

# --- manifest drift: disk vs project.json.files ---
$drift = @()
foreach ($rel in $onDisk) { if (-not $roleOf.ContainsKey($rel)) { $drift += ("on disk but unrecorded: " + $rel) } }
foreach ($rel in $roleOf.Keys) { if ($onDisk -notcontains $rel) { $drift += ("in manifest but missing on disk: " + $rel) } }
if ($drift.Count -gt 0) { Add "=== MANIFEST DRIFT ==="; foreach ($d in $drift) { Add ("  " + $d) }; Add "" }

# --- -Include all: dump every src file's contents ---
if ($Include -eq "all") {
    foreach ($rel in $onDisk) {
        Add ("=== " + $rel + " ==="); Add ((Get-Content -Raw (Join-Path $root $rel)).TrimEnd()); Add ""
    }
}

Write-Output ($sb.ToString().TrimEnd())
exit 0
