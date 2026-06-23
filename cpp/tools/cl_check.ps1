# cl_check.ps1 - the C++ oracle. Syntax/semantic-check a complete C++ compilation unit with the MSVC
# compiler (cl /Zs: full front-end check, no code generation) under the vcvars32 environment. Source
# is read from stdin. Prints "OK" and exits 0 on success; prints the cl diagnostics and exits 1 on
# failure. The csc_check analog for C++. Std defaults to c++17; override with $env:CL_STD.
$ErrorActionPreference = "Stop"
$vc = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars32.bat"
$std = if ($env:CL_STD) { $env:CL_STD } else { "c++17" }

# Load the MSVC environment once and cache it (vcvars32 is slow). Delete the cache file if the
# toolchain changes. With the env loaded, cl is on PATH and each check is fast.
$cache = Join-Path $env:TEMP "ratchet_vcvars32_env.txt"
if (-not (Test-Path $cache)) {
    if (-not (Test-Path $vc)) { Write-Output ("vcvars32 not found: " + $vc); exit 1 }
    cmd /c "`"$vc`" >nul 2>&1 && set" | Set-Content -Encoding ascii $cache
}
foreach ($line in Get-Content $cache) {
    if ($line -match '^([^=]+)=(.*)$') { [Environment]::SetEnvironmentVariable($Matches[1], $Matches[2], 'Process') }
}

# Read raw bytes from stdin, strip a leading UTF-8 BOM (the host's writer prepends one), then decode
# as UTF-8. Reading via [Console]::In mis-decodes the BOM under a non-UTF-8 console codepage (it lands
# as stray chars on line 1).
$stdin = [Console]::OpenStandardInput()
$ms = New-Object System.IO.MemoryStream
$stdin.CopyTo($ms)
$bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) {
    $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] }
}
$code = [System.Text.Encoding]::UTF8.GetString($bytes)
# If the model wrapped the source in a markdown code fence (common despite instructions), take the
# fenced block's contents so backticks/```cpp don't reach the compiler.
$m = [regex]::Match($code, '(?s)```[a-zA-Z0-9+#]*\r?\n(.*?)\r?\n```')
if ($m.Success) { $code = $m.Groups[1].Value }

$base = [System.IO.Path]::GetTempFileName()
$cpp = [System.IO.Path]::ChangeExtension($base, ".cpp")
Move-Item $base $cpp -Force
[System.IO.File]::WriteAllText($cpp, $code, (New-Object System.Text.UTF8Encoding $false))

$out = & cl /nologo /EHsc /utf-8 "/std:$std" /Zs $cpp 2>&1
$ec = $LASTEXITCODE
Remove-Item $cpp -ErrorAction SilentlyContinue

# cl echoes the source file name on its own line; drop it, and shorten the temp path in diagnostics.
$fname = [System.IO.Path]::GetFileName($cpp)
$diag = $out | Where-Object { $_ -and ("$_".Trim() -ne $fname) } | ForEach-Object { "$_" -replace [regex]::Escape($cpp), "source.cpp" }

if ($ec -eq 0) { Write-Output "OK"; exit 0 }
Write-Output (($diag -join "`r`n").Trim())
exit 1
