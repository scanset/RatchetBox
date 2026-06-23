# bootstrap_vcpkg.ps1 - one-time setup of vcpkg (the package getter add_package drives). Uses the
# native toolchain: git clone microsoft/vcpkg (shallow) + bootstrap-vcpkg.bat, then records VCPKG_ROOT.
# Idempotent: if vcpkg.exe already exists at -Dir it just reports. This DOWNLOADS (official MS repo +
# bootstrap binary).   tools/bootstrap_vcpkg.ps1 -Dir C:\vcpkg
param([string] $Dir = "C:\vcpkg")
$ErrorActionPreference = "Stop"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) { Write-Output "git not found - install Git for Windows first."; exit 1 }

$vcpkgExe = Join-Path $Dir "vcpkg.exe"
if (Test-Path $vcpkgExe) {
    Write-Output ("vcpkg already bootstrapped at " + $Dir)
}
else {
    # Do NOT pipe native git/cmd through 2>&1 here: under PS 5.1 + ErrorActionPreference=Stop, a native
    # command's stderr (git writes progress there) gets wrapped as a terminating error. Let it write to
    # the console and gate on $LASTEXITCODE / the produced file instead.
    if (-not (Test-Path (Join-Path $Dir ".git"))) {
        Write-Output ("cloning microsoft/vcpkg (shallow) into " + $Dir + " ...")
        git clone --depth 1 https://github.com/microsoft/vcpkg $Dir
        if ($LASTEXITCODE -ne 0) { Write-Output "git clone failed"; exit 1 }
    }
    else { Write-Output ("repo already present at " + $Dir + " - bootstrapping ...") }
    $boot = Join-Path $Dir "bootstrap-vcpkg.bat"
    if (-not (Test-Path $boot)) { Write-Output ("no bootstrap script at " + $boot); exit 1 }
    Write-Output "running bootstrap-vcpkg.bat ..."
    & cmd /c "`"$boot`" -disableMetrics"
    if (-not (Test-Path $vcpkgExe)) { Write-Output "bootstrap did not produce vcpkg.exe"; exit 1 }
}

# Record VCPKG_ROOT for future shells, and for this process so add_package finds it immediately.
[Environment]::SetEnvironmentVariable("VCPKG_ROOT", $Dir, "User")
$env:VCPKG_ROOT = $Dir
Write-Output ("OK: vcpkg ready at " + $Dir + " (VCPKG_ROOT set for your user). Next: add_package -Proj <p> -Name <port>")
exit 0
