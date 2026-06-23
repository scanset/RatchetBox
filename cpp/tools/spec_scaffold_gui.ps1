# spec_scaffold_gui.ps1 - the win32-gui MAPPING (deterministic half): turn a validated GUI spec AST
# (from `ratchet spec-emit <r> <f> gui`, on stdin) into a BUILDING Win32 app in src/main.cpp - a window
# class, a child control per widget (button=BUTTON, label=STATIC, textbox=EDIT), a WndProc whose
# WM_COMMAND switch dispatches each `on_click` edge to its handler function, and the message loop.
# Widget HWNDs are globals named h_<Name> so handlers can reference siblings. Handler bodies are left as
# `// TODO: <pseudocode>` for the model to fill (edit_file), compiler-gated.   ratchet spec-emit .. gui | spec_scaffold_gui -Proj App
param([string] $Proj)
$ErrorActionPreference = "Stop"

$sin = [Console]::OpenStandardInput(); $ms = New-Object System.IO.MemoryStream; $sin.CopyTo($ms); $bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) { $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] } }
$ast = [System.Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

$byName = @{}; foreach ($n in $ast.nodes) { $byName[$n.name] = $n }
$window = $null; foreach ($n in $ast.nodes) { if ($n.kind -eq 'window') { $window = $n; break } }
if (-not $window) { Write-Output "no window node in spec"; exit 1 }

# widgets the window contains, in order; plus on_click (button -> handler) pairs
$widgets = @(); foreach ($e in $window.edges) { if ($e.type -eq 'contains' -and $byName[$e.target]) { $widgets += $byName[$e.target] } }
$clicks = @(); foreach ($w in $widgets) { foreach ($e in $w.edges) { if ($e.type -eq 'on_click') { $clicks += @{ btn = $w.name; handler = $e.target } } } }
$handlers = @(); foreach ($n in $ast.nodes) { if ($n.kind -eq 'handler') { $handlers += $n } }

function WinClass($kind) { switch ($kind) { 'button' { 'BUTTON' } 'label' { 'STATIC' } 'textbox' { 'EDIT' } default { 'STATIC' } } }
function ExtraStyle($kind) { if ($kind -eq 'textbox') { ' | WS_BORDER' } else { '' } }
function FieldVal($node, $fname, $default) { foreach ($f in $node.fields) { if ($f.name -eq $fname -and $f.value) { return $f.value } } return $default }

$sb = New-Object System.Text.StringBuilder
[void]$sb.AppendLine("#ifndef UNICODE`r`n#define UNICODE`r`n#endif`r`n#ifndef _UNICODE`r`n#define _UNICODE`r`n#endif")
[void]$sb.AppendLine("#include <windows.h>`r`n#include <string>`r`n")
$id = 1001; $ids = @{}
foreach ($w in $widgets) { [void]$sb.AppendLine("#define IDC_" + $w.name + " " + $id); $ids[$w.name] = $id; $id++ }
[void]$sb.AppendLine("")
foreach ($w in $widgets) { [void]$sb.AppendLine("static HWND h_" + $w.name + ";") }
[void]$sb.AppendLine("")
# handler functions (bodies filled from the spec pseudocode)
foreach ($h in $handlers) {
    $todo = ""; foreach ($m in $h.methods) { if ($m.body) { $todo = $m.body; break } }
    [void]$sb.AppendLine("static void " + $h.name + "(HWND hwnd) {")
    [void]$sb.AppendLine("    // TODO: " + $todo)
    [void]$sb.AppendLine("}")
}
[void]$sb.AppendLine("")
[void]$sb.AppendLine("static LRESULT CALLBACK WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam) {")
[void]$sb.AppendLine("    switch (msg) {")
[void]$sb.AppendLine("    case WM_CREATE: {")
$y = 10
foreach ($w in $widgets) {
    $cls = WinClass $w.kind; $ex = ExtraStyle $w.kind
    $txt = FieldVal $w "text" ""
    if ($w.kind -eq 'button' -and $txt -eq "") { $txt = $w.name }
    [void]$sb.AppendLine('        h_' + $w.name + ' = CreateWindowExW(0, L"' + $cls + '", L"' + $txt + '", WS_CHILD | WS_VISIBLE' + $ex + ', 10, ' + $y + ', 240, 26, hwnd, (HMENU)IDC_' + $w.name + ', ((LPCREATESTRUCT)lParam)->hInstance, NULL);')
    $y += 34
}
[void]$sb.AppendLine("        return 0; }")
[void]$sb.AppendLine("    case WM_COMMAND:")
[void]$sb.AppendLine("        switch (LOWORD(wParam)) {")
foreach ($c in $clicks) { [void]$sb.AppendLine("        case IDC_" + $c.btn + ": " + $c.handler + "(hwnd); return 0;") }
[void]$sb.AppendLine("        }")
[void]$sb.AppendLine("        return 0;")
[void]$sb.AppendLine("    case WM_DESTROY: PostQuitMessage(0); return 0;")
[void]$sb.AppendLine("    default: return DefWindowProcW(hwnd, msg, wParam, lParam);")
[void]$sb.AppendLine("    }")
[void]$sb.AppendLine("}")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("int WINAPI wWinMain(HINSTANCE hInst, HINSTANCE, PWSTR, int nCmdShow) {")
[void]$sb.AppendLine('    const wchar_t* cls = L"' + $window.name + 'Class";')
[void]$sb.AppendLine("    WNDCLASSW wc = {}; wc.lpfnWndProc = WndProc; wc.hInstance = hInst; wc.lpszClassName = cls;")
[void]$sb.AppendLine("    wc.hCursor = LoadCursorW(NULL, IDC_ARROW); wc.hbrBackground = (HBRUSH)(COLOR_BTNFACE + 1);")
[void]$sb.AppendLine("    RegisterClassW(&wc);")
$wtitle = FieldVal $window "title" $window.name
[void]$sb.AppendLine('    HWND hwnd = CreateWindowExW(0, cls, L"' + $wtitle + '", WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, 300, ' + ($y + 70) + ', NULL, NULL, hInst, NULL);')
[void]$sb.AppendLine("    if (!hwnd) return 1;")
[void]$sb.AppendLine("    ShowWindow(hwnd, nCmdShow);")
[void]$sb.AppendLine("    MSG msg; while (GetMessageW(&msg, NULL, 0, 0) > 0) { TranslateMessage(&msg); DispatchMessageW(&msg); }")
[void]$sb.AppendLine("    return 0;")
[void]$sb.AppendLine("}")

$utf8 = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText((Join-Path $root "src\main.cpp"), $sb.ToString(), $utf8)

# ensure it builds as a GUI app: subsystem windows + user32/gdi32
$pj = Join-Path $root "project.json"; $cfg = Get-Content -Raw $pj | ConvertFrom-Json
function SetProp($o, $k, $v) { if ($o.PSObject.Properties.Name -contains $k) { $o.$k = $v } else { $o | Add-Member -NotePropertyName $k -NotePropertyValue $v } }
SetProp $cfg "subsystem" "windows"
$libs = @(); if ($cfg.libs) { $libs = @($cfg.libs) }
foreach ($l in @("user32.lib", "gdi32.lib")) { if ($libs -notcontains $l) { $libs += $l } }
SetProp $cfg "libs" $libs
[System.IO.File]::WriteAllText($pj, ($cfg | ConvertTo-Json -Depth 6), $utf8)

Write-Output ("OK: scaffolded Win32 GUI -> src\main.cpp (" + $widgets.Count + " widgets, " + $clicks.Count + " click handler(s), " + $handlers.Count + " handler fn(s))")
exit 0
