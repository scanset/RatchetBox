# build_project.ps1 - compile + link a whole C++ project with MSVC cl to a persistent dist\<name>.exe.
# Resolves Proj as a path (folder with project.json) or a bare name under workspaces\. Loads the cached
# vcvars32 env (shared with cl_check), compiles every src\**\*.cpp, and links to the project's `out`.
# OK/diagnostics + exit 0/1, so it also works as a flow oracle.   tools/build_project.ps1 MyApp
param([string] $Proj)
$ErrorActionPreference = "Stop"
if (-not $Proj) { Write-Output "usage: build_project <project>"; exit 1 }

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

$cfg = Get-Content -Raw (Join-Path $root "project.json") | ConvertFrom-Json
$std = if ($cfg.std) { $cfg.std } else { "c++17" }
$out = if ($cfg.out) { ($cfg.out -replace '/', '\') } else { "dist\" + $cfg.name + ".exe" }
$sub = if ($cfg.subsystem) { $cfg.subsystem } else { "console" }   # console (main) or windows (WinMain)
$libs = @(); if ($cfg.libs) { $libs = @($cfg.libs) }               # extra import libs, e.g. user32.lib ws2_32.lib
$includes = @(); if ($cfg.includes) { $includes = @($cfg.includes) } # extra header search dirs (/I), e.g. a vcpkg include tree
$libdirs = @(); if ($cfg.libdirs) { $libdirs = @($cfg.libdirs) }     # extra lib search dirs (/LIBPATH), e.g. a vcpkg lib tree

# Load the MSVC env once and cache it (shared with cl_check). Delete the cache if the toolchain changes.
$vc = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars32.bat"
$cache = Join-Path $env:TEMP "ratchet_vcvars32_env.txt"
if (-not (Test-Path $cache)) {
    if (-not (Test-Path $vc)) { Write-Output ("vcvars32 not found: " + $vc); exit 1 }
    cmd /c "`"$vc`" >nul 2>&1 && set" | Set-Content -Encoding ascii $cache
}
foreach ($line in Get-Content $cache) { if ($line -match '^([^=]+)=(.*)$') { [Environment]::SetEnvironmentVariable($Matches[1], $Matches[2], 'Process') } }

$srcDir = Join-Path $root "src"
$cpps = @(Get-ChildItem -Recurse -File $srcDir -Filter *.cpp -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName })
if ($cpps.Count -eq 0) { Write-Output "no .cpp files under src\"; exit 1 }

$exe = Join-Path $root $out
New-Item -ItemType Directory -Force (Split-Path $exe) | Out-Null
$objDir = (Join-Path $root "dist\obj") + "\"
New-Item -ItemType Directory -Force $objDir | Out-Null

# Compile flags (incl. extra header dirs), then the sources, then linker options (/link must come after
# the inputs): the subsystem (console = main, windows = WinMain), extra lib search dirs, and import libs.
$incFlags = @($includes | ForEach-Object { "/I$_" })
$libdirFlags = @($libdirs | ForEach-Object { "/LIBPATH:$_" })
$clArgs = @("/nologo", "/EHsc", "/utf-8", "/std:$std") + $incFlags + @("/Fe:$exe", "/Fo:$objDir") + $cpps + @("/link", "/SUBSYSTEM:$($sub.ToUpper())") + $libdirFlags + $libs
$diag = & cl @clArgs 2>&1
$code = $LASTEXITCODE

# Drop cl's per-file name echoes; shorten temp/abs noise.
$names = $cpps | ForEach-Object { [System.IO.Path]::GetFileName($_) }
$clean = $diag | Where-Object { $_ -and ($names -notcontains "$_".Trim()) -and ("$_".Trim() -ne "Generating Code...") }
if ($code -eq 0) {
    # Applocal deploy: vcpkg's dynamic triplet puts runtime DLLs in installed\<triplet>\bin (sibling of
    # the lib dir). Copy them next to the exe so it runs without DLL-not-found (0xC0000135).
    $exeDir = Split-Path $exe
    foreach ($ld in $libdirs) {
        $bin = Join-Path (Split-Path -Parent $ld) "bin"
        if (Test-Path $bin) { Get-ChildItem $bin -Filter *.dll -ErrorAction SilentlyContinue | ForEach-Object { Copy-Item $_.FullName $exeDir -Force -ErrorAction SilentlyContinue } }
    }
    Write-Output ("OK: built " + $exe); exit 0
}
Write-Output (($clean -join "`r`n").Trim())
exit 1
