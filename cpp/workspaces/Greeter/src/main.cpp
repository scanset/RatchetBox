#ifndef UNICODE
#define UNICODE
#endif
#ifndef _UNICODE
#define _UNICODE
#endif
#include <windows.h>
#include <string>

#define IDC_NameBox 1001
#define IDC_GreetButton 1002
#define IDC_OutputLabel 1003

static HWND h_NameBox;
static HWND h_GreetButton;
static HWND h_OutputLabel;

static void OnGreet(HWND hwnd) {
    // TODO: read NameBox text, set OutputLabel text to Hello,  + that text
}

static LRESULT CALLBACK WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam) {
    switch (msg) {
    case WM_CREATE: {
        h_NameBox = CreateWindowExW(0, L"EDIT", L"", WS_CHILD | WS_VISIBLE | WS_BORDER, 10, 10, 240, 26, hwnd, (HMENU)IDC_NameBox, ((LPCREATESTRUCT)lParam)->hInstance, NULL);
        h_GreetButton = CreateWindowExW(0, L"BUTTON", L"Greet", WS_CHILD | WS_VISIBLE, 10, 44, 240, 26, hwnd, (HMENU)IDC_GreetButton, ((LPCREATESTRUCT)lParam)->hInstance, NULL);
        h_OutputLabel = CreateWindowExW(0, L"STATIC", L"", WS_CHILD | WS_VISIBLE, 10, 78, 240, 26, hwnd, (HMENU)IDC_OutputLabel, ((LPCREATESTRUCT)lParam)->hInstance, NULL);
        return 0; }
    case WM_COMMAND:
        switch (LOWORD(wParam)) {
        case IDC_GreetButton: OnGreet(hwnd); return 0;
        }
        return 0;
    case WM_DESTROY: PostQuitMessage(0); return 0;
    default: return DefWindowProcW(hwnd, msg, wParam, lParam);
    }
}

int WINAPI wWinMain(HINSTANCE hInst, HINSTANCE, PWSTR, int nCmdShow) {
    const wchar_t* cls = L"MainClass";
    WNDCLASSW wc = {}; wc.lpfnWndProc = WndProc; wc.hInstance = hInst; wc.lpszClassName = cls;
    wc.hCursor = LoadCursorW(NULL, IDC_ARROW); wc.hbrBackground = (HBRUSH)(COLOR_BTNFACE + 1);
    RegisterClassW(&wc);
    HWND hwnd = CreateWindowExW(0, cls, L"Greeter", WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, 300, 182, NULL, NULL, hInst, NULL);
    if (!hwnd) return 1;
    ShowWindow(hwnd, nCmdShow);
    MSG msg; while (GetMessageW(&msg, NULL, 0, 0) > 0) { TranslateMessage(&msg); DispatchMessageW(&msg); }
    return 0;
}
