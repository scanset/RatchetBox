# ingest-mslearn.ps1 - transcribe a page-marked MS Learn text dump (===== pN ===== markers) into an
# indexable markdown knowledge base. Two modes:
#   -Mode symbols : an API index (a bare PascalCase symbol line followed by description lines) ->
#                   one md per symbol (overloads merged), grouped into first-letter subdirs. (win32)
#   -Mode topics  : prose with topic headings -> merge pages into topic sections, one md per topic,
#                   continuation pages folded into the current topic. (cpp-msvc)
# Deterministic, no model. Run: tools/ingest-mslearn.ps1 -Src <dump.txt> -OutDir <kb-dir> -Mode symbols
param(
  [Parameter(Mandatory = $true)][string] $Src,
  [Parameter(Mandatory = $true)][string] $OutDir,
  [ValidateSet("symbols", "topics")][string] $Mode = "symbols"
)
$ErrorActionPreference = "Stop"
if (-not (Test-Path $Src)) { Write-Output ("no such file: " + $Src); exit 1 }
$utf8 = New-Object System.Text.UTF8Encoding $false

function Save-Md([string]$dir, [string]$name, [string]$content) {
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force $dir | Out-Null }
    [System.IO.File]::WriteAllText((Join-Path $dir $name), $content, $utf8)
}
function Slug([string]$s) { return ($s -replace '[^A-Za-z0-9_.-]', '_') }

$lines = [System.IO.File]::ReadAllLines($Src)
$pageRe = '^===== p[0-9]+ =====$'

if ($Mode -eq "symbols") {
    # A symbol line: a bare identifier (no spaces) that is mixed-case (rules out ALL-CAPS section
    # labels like REFERENCE/OVERVIEW). The lines that follow, until the next symbol, are its blurb.
    $entries = New-Object 'System.Collections.Generic.Dictionary[string,System.Collections.Generic.List[string]]'
    $cur = $null
    $buf = New-Object System.Collections.Generic.List[string]
    function Flush-Sym() {
        if ($cur -and $buf.Count -gt 0) {
            if (-not $entries.ContainsKey($cur)) { $entries[$cur] = New-Object System.Collections.Generic.List[string] }
            $entries[$cur].Add(($buf -join ' ').Trim())
        }
        $script:buf = New-Object System.Collections.Generic.List[string]
    }
    foreach ($raw in $lines) {
        $le = $raw.TrimEnd()           # keep leading indent: real symbols are flush-left
        $t = $le.TrimStart()
        if ($t.Length -eq 0 -or $le -match $pageRe) { continue }
        $isSym = ($le -cmatch '^[A-Za-z_][A-Za-z0-9_]{2,}$') -and ($le -cmatch '[a-z]') -and ($le -cmatch '[A-Z]')
        if ($isSym) { Flush-Sym; $cur = $le }
        elseif ($cur) { $buf.Add($t) }
    }
    Flush-Sym
    $n = 0
    foreach ($sym in $entries.Keys) {
        $blurbs = $entries[$sym] | Where-Object { $_.Length -gt 0 } | Select-Object -Unique
        if (-not $blurbs) { continue }
        $body = "# " + $sym + "`r`n`r`n" + (($blurbs | ForEach-Object { "- " + $_ }) -join "`r`n") + "`r`n"
        $c0 = $sym.Substring(0, 1).ToLower()
        $sub = if ($c0 -match '[a-z]') { $c0 } else { "_" }
        Save-Md (Join-Path $OutDir $sub) ((Slug $sym) + ".md") $body
        $n++
    }
    Write-Output ("symbols: wrote " + $n + " entries to " + $OutDir)
    exit 0
}

if ($Mode -eq "topics") {
    # Heading heuristic: a short, capitalized line, not ALL-CAPS, not ending in sentence punctuation,
    # is treated as a topic title. Pages that start mid-prose fold into the current topic.
    function Is-Heading([string]$t) {
        if ($t.Length -lt 3 -or $t.Length -gt 70) { return $false }
        if ($t -cmatch '^[A-Z0-9 ,/()_+-]+$') { return $false }      # ALL-CAPS section label -> not a topic
        if ($t -match '[.;:]$') { return $false }                    # ends like a sentence
        if ($t -match '[;{}<>=]|//|::') { return $false }            # code line, not a heading
        if ($t -notmatch '^[A-Z]') { return $false }                 # must start capitalized
        if ($t -match '^(Note|Tip|Warning|Caution|Important|Example|Output|Remarks|See also|In this article)\b') { return $false }
        return $true
    }
    $title = "intro"
    $bufT = New-Object System.Collections.Generic.List[string]
    $seq = 0
    function Flush-Topic() {
        $text = ($script:bufT -join "`r`n").Trim()
        if ($text.Length -gt 0) {
            $script:seq++
            $name = ("{0:0000}-" -f $script:seq) + (Slug $script:title).Substring(0, [Math]::Min(48, (Slug $script:title).Length))
            $body = "# " + $script:title + "`r`n`r`n" + $text + "`r`n"
            Save-Md $OutDir ($name + ".md") $body
        }
        $script:bufT = New-Object System.Collections.Generic.List[string]
    }
    foreach ($raw in $lines) {
        $t = $raw.Trim()
        if ($t -match $pageRe) { continue }
        if ((Is-Heading $t) -and $bufT.Count -gt 2) { Flush-Topic; $title = $t; continue }
        if (Is-Heading $t) { $title = $t; continue }   # heading at very start of a topic
        if ($t.Length -gt 0) { $bufT.Add($t) }
    }
    Flush-Topic
    Write-Output ("topics: wrote " + $seq + " sections to " + $OutDir)
    exit 0
}
