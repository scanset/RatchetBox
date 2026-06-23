# add_package.ps1 - provision a third-party library with vcpkg and wire it into a project's project.json
# so build_project can compile+link against it. Operator-run (e.g. via /do); uses the native toolchain
# (vcpkg) rather than reinventing dependency resolution. cl stays the builder; vcpkg only provisions
# headers/libs. Triplet defaults to x86-windows (this instance builds 32-bit via vcvars32).
#   tools/add_package.ps1 -Proj MyApp -Name fmt -Libs "fmt.lib"
#   tools/add_package.ps1 -Proj MyApp -Name nlohmann-json        (header-only: no -Libs)
param([string] $Proj, [string] $Name, [string] $Libs, [string] $Triplet = "x86-windows")
$ErrorActionPreference = "Stop"
if (-not $Proj -or -not $Name) { Write-Output 'usage: add_package -Proj <project> -Name <vcpkg-port> [-Libs "a.lib b.lib"] [-Triplet x86-windows]'; exit 1 }

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }
$pj = Join-Path $root "project.json"
$cfg = Get-Content -Raw $pj | ConvertFrom-Json

# Locate vcpkg: VCPKG_ROOT, then PATH, then common install dirs.
$vcpkgRoot = $null
if ($env:VCPKG_ROOT -and (Test-Path (Join-Path $env:VCPKG_ROOT "vcpkg.exe"))) { $vcpkgRoot = $env:VCPKG_ROOT }
if (-not $vcpkgRoot) { $c = Get-Command vcpkg -ErrorAction SilentlyContinue; if ($c) { $vcpkgRoot = Split-Path $c.Source } }
if (-not $vcpkgRoot) { foreach ($p in @("C:\vcpkg", "C:\dev\vcpkg", (Join-Path $env:USERPROFILE "vcpkg"), "C:\tools\vcpkg")) { if (Test-Path (Join-Path $p "vcpkg.exe")) { $vcpkgRoot = $p; break } } }
if (-not $vcpkgRoot) {
    Write-Output "vcpkg not found. Bootstrap it once (this downloads), then re-run add_package:"
    Write-Output "  git clone https://github.com/microsoft/vcpkg C:\vcpkg"
    Write-Output "  C:\vcpkg\bootstrap-vcpkg.bat"
    Write-Output "  setx VCPKG_ROOT C:\vcpkg     (then reopen the shell)"
    Write-Output "Or, for a header-only lib, drop its headers under the project and use link_libs / includes manually."
    exit 2
}
$vcpkgExe = Join-Path $vcpkgRoot "vcpkg.exe"

Write-Output ("installing " + $Name + ":" + $Triplet + " via " + $vcpkgExe + " ...")
& $vcpkgExe install "${Name}:${Triplet}" 2>&1 | ForEach-Object { Write-Output ("  " + $_) }
if ($LASTEXITCODE -ne 0) { Write-Output ("vcpkg install failed (exit " + $LASTEXITCODE + ")"); exit 1 }

$inc = Join-Path $vcpkgRoot ("installed\" + $Triplet + "\include")
$libdir = Join-Path $vcpkgRoot ("installed\" + $Triplet + "\lib")

function MergeArr($obj, $prop, $vals) {
    $cur = @(); if ($obj.$prop) { $cur = @($obj.$prop) }
    $merged = @($cur + $vals | Select-Object -Unique)
    if ($obj.PSObject.Properties.Name -contains $prop) { $obj.$prop = $merged }
    else { $obj | Add-Member -NotePropertyName $prop -NotePropertyValue $merged }
}
MergeArr $cfg "includes" @($inc)
MergeArr $cfg "libdirs" @($libdir)
$libList = @()
if ($Libs) { $libList = @($Libs -split '[\s,]+' | Where-Object { $_ } | ForEach-Object { if ($_ -match '\.lib$') { $_ } else { $_ + ".lib" } }) }
if ($libList.Count -gt 0) { MergeArr $cfg "libs" $libList }

[System.IO.File]::WriteAllText($pj, ($cfg | ConvertTo-Json -Depth 6), (New-Object System.Text.UTF8Encoding $false))
Write-Output ("OK: added " + $Name + " (" + $Triplet + ") to project " + $cfg.name)
Write-Output ("  includes += " + $inc)
Write-Output ("  libdirs  += " + $libdir)
if ($libList.Count -gt 0) { Write-Output ("  libs     += " + ($libList -join ", ")) }
Write-Output "  Now #include the library header; build_project will find it."
exit 0
