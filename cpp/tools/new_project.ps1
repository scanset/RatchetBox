# new_project.ps1 - scaffold a structured C++ project under workspaces\<name>. Deterministic, no model.
# Layout: src\main.cpp (entry) + src\core\ (grow pure logic here) + dist\ (build output) + project.json
# (machine memory) + PROJECT.md (narrative). Build is MSVC cl /std:c++17 over src\**\*.cpp (build_project).
# Refuses to overwrite an existing folder.   tools/new_project.ps1 "MyApp"
param([string] $Spec)
$ErrorActionPreference = "Stop"

$parts = @(); if ($Spec) { $parts = ($Spec.Trim() -split '\s+') }
if ($parts.Count -lt 1 -or $parts[0].Length -eq 0) { Write-Output "usage: new <name> [console|win32]"; exit 1 }
$name = $parts[0]
if ($name -notmatch '^[A-Za-z0-9_.-]+$') { Write-Output ("invalid project name: " + $name + " (use letters, digits, _ . -)"); exit 1 }
$kind = "console"; if ($parts.Count -gt 1) { $kind = $parts[1].ToLower() }
if ($kind -ne "console" -and $kind -ne "win32") { Write-Output ("unknown kind: " + $kind + " (use console or win32)"); exit 1 }
$std = "c++17"
$date = Get-Date -Format "yyyy-MM-dd"

$root = Join-Path "workspaces" $name
if (Test-Path $root) { Write-Output ("already exists: " + $root + " (refusing to overwrite)"); exit 1 }

function W($rel, $content) {
    $full = Join-Path $root $rel
    $dir = Split-Path -Parent $full
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force $dir | Out-Null }
    [System.IO.File]::WriteAllText($full, $content, (New-Object System.Text.UTF8Encoding $false))
}

New-Item -ItemType Directory -Force (Join-Path $root "dist") | Out-Null
New-Item -ItemType Directory -Force (Join-Path $root "src\core") | Out-Null

if ($kind -eq "win32") {
    $subsystem = "windows"
    $libs = @("user32.lib", "gdi32.lib")
    $entryRole = "entry point (WinMain + window class + WndProc)"
    W "src\main.cpp" @'
#ifndef UNICODE
#define UNICODE
#endif
#ifndef _UNICODE
#define _UNICODE
#endif
#include <windows.h>

// A WndProc handles messages for the window; closing it posts WM_DESTROY -> quit the message loop.
static LRESULT CALLBACK WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam) {
    switch (msg) {
    case WM_DESTROY:
        PostQuitMessage(0);
        return 0;
    default:
        return DefWindowProcW(hwnd, msg, wParam, lParam);
    }
}

// The GUI entry point. Register a window class, create a top-level window, run the message loop.
int WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE, PWSTR, int nCmdShow) {
    const wchar_t* cls = L"AppMainWindow";

    WNDCLASSW wc = {};
    wc.lpfnWndProc = WndProc;
    wc.hInstance = hInstance;
    wc.lpszClassName = cls;
    wc.hCursor = LoadCursorW(NULL, IDC_ARROW);
    RegisterClassW(&wc);

    HWND hwnd = CreateWindowExW(0, cls, L"App", WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT, CW_USEDEFAULT, 640, 400, NULL, NULL, hInstance, NULL);
    if (hwnd == NULL) { return 1; }
    ShowWindow(hwnd, nCmdShow);

    MSG msg;
    while (GetMessageW(&msg, NULL, 0, 0) > 0) {
        TranslateMessage(&msg);
        DispatchMessageW(&msg);
    }
    return (int)msg.wParam;
}
'@
}
else {
    $subsystem = "console"
    $libs = @()
    $entryRole = "entry point (int main)"
    W "src\main.cpp" @'
#include <iostream>

// Entry point. Add pure logic under src/core/ (one class/feature per file) and wire it in here.
int main() {
    std::cout << "App ready. Add features under src/core." << std::endl;
    return 0;
}
'@
}

$proj = [pscustomobject]@{
    name      = $name
    kind      = $kind
    std       = $std
    created   = $date
    entry     = "src/main.cpp"
    out       = ("dist/" + $name + ".exe")
    src       = "src"
    subsystem = $subsystem
    libs      = $libs
    files     = @([pscustomobject]@{ path = "src/main.cpp"; role = $entryRole })
}
W "project.json" ($proj | ConvertTo-Json -Depth 6)

$md = "# __N__`r`n`r`n## Purpose`r`nOne or two lines: what this is.`r`n`r`n## Build`r`nMSVC ``cl /std:__S__`` over src\**\*.cpp -> dist\__N__.exe (tools/build_project, subsystem __K__).`r`n`r`n## Status / TODO`r`n- [x] scaffold`r`n- [ ] (next feature)`r`n`r`n## Changelog`r`n- __D__  scaffolded (__K__, __S__)`r`n"
W "PROJECT.md" ($md.Replace("__N__", $name).Replace("__S__", $std).Replace("__D__", $date).Replace("__K__", $kind))

$count = (Get-ChildItem -Recurse -File $root | Measure-Object).Count
Write-Output ("OK: created " + $root + " (" + $kind + ", c++) - " + $count + " files. Activate it: /ws switch " + $name)
exit 0
