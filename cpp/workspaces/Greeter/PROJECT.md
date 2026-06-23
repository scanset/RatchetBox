# Greeter

## Purpose
One or two lines: what this is.

## Build
MSVC `cl /std:c++17` over src\**\*.cpp -> dist\Greeter.exe (tools/build_project, subsystem win32).

## Status / TODO
- [x] scaffold
- [ ] (next feature)

## Changelog
- 2026-06-23  scaffolded (win32, c++17)
- 2026-06-23  edited src/main.cpp (Implement the OnGreet handler body marked // TODO. Read the text from the h_NameBox EDIT control with GetWindowTextW into a wchar_t buffer, build a std::wstring Hello, + that text, and set h_OutputLabel with SetWindowTextW. Keep everything else in the file exactly as-is (the IDs, handles, WndProc, wWinMain).)
