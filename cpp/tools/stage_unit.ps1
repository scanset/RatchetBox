# stage_unit.ps1 - compose's per-unit oracle (.h/.cpp separate-compilation model). The generated output
# may contain MULTIPLE files, each introduced by a marker line `// === <path-under-src> ===` (a component
# emits its .h declaration + its .cpp definition; the entry emits main.cpp). Split on the markers, write
# each file under src\ (path-guarded), then build the WHOLE project with cl - cl globs every src\**\*.cpp,
# so each component .cpp compiles + links on its own (real separate compilation) and a failing unit is
# caught here. No marker present -> the whole output goes to -Path. Code on stdin; exits with the build's
# code (0 = built).
param([string] $Proj, [string] $Path)
$ErrorActionPreference = "Stop"

# stdin -> raw bytes -> BOM strip (avoid [Console]::In mis-decode under a non-UTF-8 codepage).
$stdin = [Console]::OpenStandardInput()
$ms = New-Object System.IO.MemoryStream
$stdin.CopyTo($ms)
$bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) {
    $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] }
}
$code = [System.Text.Encoding]::UTF8.GetString($bytes)

# Strip any markdown fence lines (the prompt forbids them; be defensive), keep content + FILE markers.
$code = (($code -split "`r?`n") | Where-Object { $_ -notmatch '^\s*```' }) -join "`n"

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

# Split into (relpath, content) sections on the `// === <path> ===` markers.
$mk = [regex]::Matches($code, '(?m)^//\s*===\s*(.+?)\s*===\s*$')
$files = @()
if ($mk.Count -gt 0) {
    for ($i = 0; $i -lt $mk.Count; $i++) {
        $p = $mk[$i].Groups[1].Value.Trim()
        $s = $mk[$i].Index + $mk[$i].Length
        $e = if ($i + 1 -lt $mk.Count) { $mk[$i + 1].Index } else { $code.Length }
        $content = $code.Substring($s, $e - $s).Trim("`r", "`n")
        $files += , @($p, $content)
    }
} else {
    $files += , @($Path, $code.Trim("`r", "`n"))
}

# Write each file, path-guarded (under src\, a C++ source/header, no escape).
foreach ($f in $files) {
    if ($f[0] -match '\.\.' -or [System.IO.Path]::IsPathRooted($f[0])) { Write-Output ("refusing path outside project: " + $f[0]); exit 1 }
    $rel = ($f[0] -replace '/', '\').TrimStart('\')
    if ($rel -notmatch '^src\\') { $rel = "src\" + $rel }   # marker paths are relative to src\
    if ($rel -notmatch '\.(cpp|h|hpp|cc|hxx)$') { Write-Output ("path must be a C++ source/header (.cpp/.h/.hpp): " + $f[0]); exit 1 }
    $full = Join-Path $root $rel
    $dir = Split-Path -Parent $full
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force $dir | Out-Null }
    [System.IO.File]::WriteAllText($full, ($f[1] + "`r`n"), (New-Object System.Text.UTF8Encoding $false))
    Write-Output ("staged " + $rel)
}

# Build the whole project; the build's exit code is our verdict.
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$out = & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $here "build_project.ps1") $root 2>&1
$ec = $LASTEXITCODE
$out | ForEach-Object { Write-Output ("$_") }
exit $ec
