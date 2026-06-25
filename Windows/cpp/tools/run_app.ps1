# run_app.ps1 - run a built project exe, feeding test input on stdin and capturing stdout/stderr/exit
# with a timeout. The input to feed comes on THIS script's stdin. The build (build_project exit 0) is
# the deterministic oracle; this is for observing runtime behavior.
#
# stdin is fed from a TEMP FILE via cmd's `< file` redirect, NOT .NET's in-memory RedirectStandardInput
# pipe: that managed pipe delivers garbled/no data to a native child here (returned wrong results;
# `cmd < file` is correct). cmd is launched through ProcessStartInfo so we still get a reliable exit
# code, captured stdout/stderr, and a timeout. Native exes are SAC-gated - a block surfaces as a
# non-zero exit with the policy message on stderr (reported, not hung).
#   echo "6 7 *" | tools/run_app.ps1 -Proj Calc -TimeoutSec 10
param([string] $Proj, [int] $TimeoutSec = 10)
$ErrorActionPreference = "Stop"

# The bytes to feed the program (raw -> strip UTF-8 BOM).
$sin = [Console]::OpenStandardInput()
$ms = New-Object System.IO.MemoryStream
$sin.CopyTo($ms)
$bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) {
    $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] }
}

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

$cfg = Get-Content -Raw (Join-Path $root "project.json") | ConvertFrom-Json
$out = if ($cfg.out) { ($cfg.out -replace '/', '\') } else { "dist\" + $cfg.name + ".exe" }
$exe = Join-Path $root $out
if (-not (Test-Path $exe)) { Write-Output ("no exe (build first): " + $exe); exit 1 }

$tin = [System.IO.Path]::GetTempFileName()
[System.IO.File]::WriteAllBytes($tin, [byte[]]$bytes)
try {
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "cmd.exe"
    $psi.Arguments = '/c ""' + (Resolve-Path $exe).Path + '" < "' + $tin + '""'
    $psi.UseShellExecute = $false
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardError = $true
    $psi.CreateNoWindow = $true
    try { $p = [System.Diagnostics.Process]::Start($psi) }
    catch { Write-Output ("BLOCKED: could not launch - " + $_.Exception.Message.Split([char]10)[0]); exit 3 }

    $ot = $p.StandardOutput.ReadToEndAsync()
    $et = $p.StandardError.ReadToEndAsync()
    if (-not $p.WaitForExit($TimeoutSec * 1000)) {
        try { $p.Kill() } catch {}
        Write-Output ("[timed out after " + $TimeoutSec + "s - killed]")
        exit 2
    }
    $so = $ot.Result
    $se = $et.Result
    if ($se -match 'Application Control policy') { Write-Output "BLOCKED: Smart App Control blocked the exe"; exit 3 }
    Write-Output ("exit: " + $p.ExitCode)
    if ($so.Trim().Length -gt 0) { Write-Output "--- stdout ---"; Write-Output $so.TrimEnd() }
    if ($se.Trim().Length -gt 0) { Write-Output "--- stderr ---"; Write-Output $se.TrimEnd() }
}
finally {
    try { Remove-Item -Force $tin -ErrorAction SilentlyContinue } catch {}
}
exit 0
