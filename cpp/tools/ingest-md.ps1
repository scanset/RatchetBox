# ingest-md.ps1 - convert already-markdown sources into indexable kb entries. Three modes:
#   patterns : per-subdir README.md + its .cpp -> one md per pattern (prose + compiling example).
#   split    : split one big markdown on ## / ### headings -> one md per section (fence-aware).
#   copy     : copy a tree of .md files, stripping leading YAML frontmatter (--- ... ---).
# Deterministic, no model. Run: tools/ingest-md.ps1 -Src <path> -OutDir <kb-dir> -Mode <mode>
param(
  [Parameter(Mandatory = $true)][string] $Src,
  [Parameter(Mandatory = $true)][string] $OutDir,
  [ValidateSet("patterns", "split", "copy")][string] $Mode
)
$ErrorActionPreference = "Stop"
$utf8 = New-Object System.Text.UTF8Encoding $false
function Save([string]$dir, [string]$name, [string]$content) {
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force $dir | Out-Null }
    [System.IO.File]::WriteAllText((Join-Path $dir $name), $content, $utf8)
}
function Slug([string]$s) { return ($s -replace '[^A-Za-z0-9_.-]', '_') }
function CleanHeading([string]$h) { return (($h -replace '^#+\s*', '') -replace '<[^>]+>', '').Trim() }
function StripFrontmatter([string[]]$lines) {
    if ($lines.Count -gt 0 -and $lines[0].Trim() -eq '---') {
        for ($i = 1; $i -lt $lines.Count; $i++) {
            if ($lines[$i].Trim() -eq '---') { return ($lines[($i + 1)..($lines.Count - 1)] -join "`r`n").TrimStart() }
        }
    }
    return ($lines -join "`r`n")
}

if ($Mode -eq "patterns") {
    $n = 0
    foreach ($d in Get-ChildItem -Directory $Src) {
        $readme = Join-Path $d.FullName "README.md"
        if (-not (Test-Path $readme)) { continue }
        $rd = Get-Content -Raw $readme
        $h = ($rd -split "`n" | Where-Object { $_ -match '^#+\s' } | Select-Object -First 1)
        $title = if ($h) { CleanHeading $h } else { $d.Name }
        $body = "# " + $title + " (C++ design pattern)`r`n`r`n" + $rd.TrimEnd()
        $cpp = Get-ChildItem $d.FullName -Filter *.cpp | Select-Object -First 1
        if ($cpp) { $body += "`r`n`r`n## Example (compiles)`r`n`r`n``````cpp`r`n" + (Get-Content -Raw $cpp.FullName).TrimEnd() + "`r`n``````" }
        Save $OutDir ((Slug $d.Name) + ".md") ($body + "`r`n")
        $n++
    }
    Write-Output ("patterns: wrote " + $n + " entries")
    exit 0
}

if ($Mode -eq "split") {
    $lines = [System.IO.File]::ReadAllLines($Src)
    $fence = $false; $title = $null; $seq = 0; $n = 0
    $buf = New-Object System.Collections.Generic.List[string]
    function Flush-Section() {
        if ($script:title -and $script:buf.Count -gt 0) {
            $text = ($script:buf -join "`r`n").Trim()
            if ($text.Length -gt 0) {
                $script:seq++
                $nm = ("{0:0000}-" -f $script:seq) + (Slug $script:title)
                if ($nm.Length -gt 80) { $nm = $nm.Substring(0, 80) }
                Save $OutDir ($nm + ".md") ("# " + $script:title + "`r`n`r`n" + $text + "`r`n")
                $script:n++
            }
        }
        $script:buf = New-Object System.Collections.Generic.List[string]
    }
    foreach ($raw in $lines) {
        if ($raw -match '^```') { $fence = -not $fence; $buf.Add($raw); continue }
        if ((-not $fence) -and ($raw -match '^###? ')) { Flush-Section; $title = CleanHeading $raw; continue }
        $buf.Add($raw)
    }
    Flush-Section
    Write-Output ("split: wrote " + $n + " entries")
    exit 0
}

if ($Mode -eq "copy") {
    $root = (Resolve-Path $Src).Path
    $n = 0
    foreach ($f in Get-ChildItem -Recurse -File $Src -Filter *.md) {
        if ($f.Name -ieq 'README.md' -or $f.Name -ieq 'toc.md' -or $f.Name -ieq 'index.md') { continue }
        $rel = $f.FullName.Substring($root.Length).TrimStart('\', '/')
        $all = [System.IO.File]::ReadAllLines($f.FullName)
        # Preserve the header (#include) from the frontmatter api_location list before stripping it.
        $headers = @()
        if ($all.Count -gt 0 -and $all[0].Trim() -eq '---') {
            for ($i = 1; $i -lt $all.Count; $i++) {
                if ($all[$i].Trim() -eq '---') { break }
                if ($all[$i] -match '^\s*-\s*(\S+\.(?:h|hpp))\s*$') { $headers += $Matches[1] }
            }
        }
        $content = StripFrontmatter $all
        if ($content.Trim().Length -eq 0) { continue }
        if ($headers.Count -gt 0) { $content = $content.TrimEnd() + "`r`n`r`n**Header:** " + (($headers | Select-Object -Unique) -join ", ") + "`r`n" }
        Save (Join-Path $OutDir (Split-Path $rel -Parent)) $f.Name $content
        $n++
    }
    Write-Output ("copy: wrote " + $n + " files")
    exit 0
}
