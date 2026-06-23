# stage_and_build.ps1 - write a candidate C++ file into a project's src tree and build the WHOLE project
# with cl. The add_file/edit_file oracle. Code on stdin (raw bytes -> BOM strip -> fence strip). -Proj
# is a path or a name under workspaces\; -Path is the target under src\ (.cpp/.h/.hpp). Reports the
# build result and exits with the build's code (0 = built).
param([string] $Proj, [string] $Path)
$ErrorActionPreference = "Stop"

# Read source from stdin as raw bytes (avoid [Console]::In BOM mis-decode under non-UTF-8 codepage).
$stdin = [Console]::OpenStandardInput()
$ms = New-Object System.IO.MemoryStream
$stdin.CopyTo($ms)
$bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) {
    $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] }
}
$code = [System.Text.Encoding]::UTF8.GetString($bytes)
$m = [regex]::Match($code, '(?s)```[a-zA-Z0-9+#]*\r?\n(.*?)\r?\n```')
if ($m.Success) { $code = $m.Groups[1].Value }

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

# Path guard: under src\, a C++ source/header, no escape.
$rel = ($Path -replace '/', '\').TrimStart('\')
if ($rel -match '\.\.' -or [System.IO.Path]::IsPathRooted($rel)) { Write-Output ("refusing path outside project: " + $Path); exit 1 }
if ($rel -notmatch '^src\\') { Write-Output ("path must be under src\: " + $Path); exit 1 }
if ($rel -notmatch '\.(cpp|h|hpp|cc|hxx)$') { Write-Output ("path must be a C++ source/header (.cpp/.h/.hpp): " + $Path); exit 1 }

$full = Join-Path $root $rel
$dir = Split-Path -Parent $full
if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force $dir | Out-Null }
[System.IO.File]::WriteAllText($full, $code, (New-Object System.Text.UTF8Encoding $false))
Write-Output ("staged " + $rel)

# Build the whole project; the build's exit code is our verdict.
$bp = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) "build_project.ps1"
$out = & powershell -NoProfile -ExecutionPolicy Bypass -File $bp $root 2>&1
$ec = $LASTEXITCODE
$out | ForEach-Object { Write-Output ("$_") }
exit $ec
