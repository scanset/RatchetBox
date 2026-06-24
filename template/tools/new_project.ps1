# new_project.ps1 - scaffold a project under workspaces\<name>: project.json (machine memory) + PROJECT.md
# (narrative) + src\ with an entry stub. CHANGE_ME: set the entry file name/extension and its starter
# content for your language, plus any project.json fields your build_project needs (std, libs, out, ...).
# Cargo-new minimal: no pre-created empty dirs - stage_and_build mkdirs targets on demand. Refuses to
# overwrite. Arg: name.  See dotnet4-x / cpp new_project.ps1 for real scaffolds.
param([string] $Spec)
$ErrorActionPreference = "Stop"

$parts = @(); if ($Spec) { $parts = ($Spec.Trim() -split '\s+') }
if ($parts.Count -lt 1 -or $parts[0].Length -eq 0) { Write-Output "usage: new <name>"; exit 1 }
$name = $parts[0]
if ($name -notmatch '^[A-Za-z0-9_.-]+$') { Write-Output ("invalid project name: " + $name); exit 1 }
$date = Get-Date -Format "yyyy-MM-dd"

$root = Join-Path "workspaces" $name
if (Test-Path $root) { Write-Output ("already exists: " + $root + " (refusing to overwrite)"); exit 1 }

function W($rel, $content) {
    $full = Join-Path $root $rel
    $dir = Split-Path -Parent $full
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force $dir | Out-Null }
    [System.IO.File]::WriteAllText($full, $content, (New-Object System.Text.UTF8Encoding $false))
}

# CHANGE_ME: the entry file + extension + starter content for your language (e.g. src\main.cs, src\main.cpp).
$entry = "src/main.txt"
W "src\main.txt" "CHANGE_ME: your program entry point (rename to your language's extension; wire units from src\ here)."

# CHANGE_ME: add the project.json fields your build_project reads (e.g. std, libs, subsystem, out path).
$proj = [pscustomobject]@{
    name    = $name
    created = $date
    entry   = $entry
    src     = "src"
    out     = ("dist/" + $name + ".out")
    files   = @([pscustomobject]@{ path = $entry; role = "entry (CHANGE_ME)" })
}
W "project.json" ($proj | ConvertTo-Json -Depth 6)
W "PROJECT.md" ("# " + $name + "`r`n`r`n## Purpose`r`nOne or two lines: what this is.`r`n`r`n## Build`r`nCHANGE_ME: how build_project builds this.`r`n`r`n## Changelog`r`n- " + $date + "  scaffolded`r`n")

$count = (Get-ChildItem -Recurse -File $root | Measure-Object).Count
Write-Output ("OK: created " + $root + " (" + $count + " files). Activate it: /ws switch " + $name)
exit 0
