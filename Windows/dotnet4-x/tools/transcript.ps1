# transcript.ps1 - assemble a readable transcript of the most recent flow runs from run-state, so a test
# reads back as the prompts SENT to the local model and what it RETURNED. A compose spawns the compose run
# plus one add_unit run per unit, so -Count should cover them (default 8). Generate steps print the
# rendered prompt + the model output (the host records both as of 2026-06-24); action steps print a
# one-line result. A standalone dev utility (not flow-invoked). Usage: tools/transcript.ps1 [-Count N]
# [-Full]   (pipe to a file to keep it: tools/transcript.ps1 | Set-Content -Encoding utf8 t.txt)
param([int] $Count = 8, [switch] $Full, [string] $Ws)
$ErrorActionPreference = "Stop"
if (-not (Test-Path runs)) { Write-Output "(no runs/ in this ratchet)"; exit 0 }

$all = @(Get-ChildItem runs -Directory | Sort-Object Name)
if ($Ws) {
    # Keep only runs whose meta.workspace matches (the compose run + its add_unit sub-runs share it).
    $all = @($all | Where-Object {
        $mf = Join-Path $_.FullName "meta.json"
        if (-not (Test-Path $mf)) { return $false }
        try { (Split-Path ((Get-Content -Raw $mf | ConvertFrom-Json).workspace) -Leaf) -eq $Ws } catch { return $false }
    })
}
$runs = @($all | Select-Object -Last $Count)
foreach ($r in $runs) {
    $meta = $null; try { $meta = Get-Content -Raw (Join-Path $r.FullName "meta.json") | ConvertFrom-Json } catch {}
    $oc = "(no outcome)"; $ocf = Join-Path $r.FullName "outcome.json"
    if (Test-Path $ocf) { try { $oc = (Get-Content -Raw $ocf | ConvertFrom-Json).outcome } catch {} }
    Write-Output ("=" * 80)
    Write-Output ("RUN " + $r.Name + "   chain=" + $meta.chain)
    if ($meta.input) { Write-Output ("input:   " + $meta.input) }
    Write-Output ("outcome: " + $oc)
    foreach ($s in (Get-ChildItem $r.FullName -Filter "step-*.json" | Sort-Object Name)) {
        $j = $null; try { $j = Get-Content -Raw $s.FullName | ConvertFrom-Json } catch { continue }
        if ($j.kind -eq "generate") {
            Write-Output ""
            Write-Output ("---------------- PROMPT sent to [" + $j.node + "] ----------------")
            Write-Output ("" + $j.prompt)
            Write-Output ("---------------- MODEL RETURNED ----------------")
            $o = "" + $j.output
            if (-not $Full -and $o.Length -gt 2500) { $o = $o.Substring(0, 2500) + "`n... [truncated - rerun with -Full for the whole response]" }
            Write-Output $o
        } elseif ($j.kind -eq "action") {
            $o = (("" + $j.output) -replace "\s+", " ").Trim()
            if ($o.Length -gt 160) { $o = $o.Substring(0, 160) + " ..." }
            $tag = if ($j.ok) { "ok  " } else { "FAIL" }
            Write-Output ("  [" + $tag + "] " + $j.node + ": " + $o)
        }
    }
    Write-Output ""
}
exit 0
