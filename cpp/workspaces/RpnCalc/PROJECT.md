# RpnCalc

## Purpose
One or two lines: what this is.

## Build
MSVC `cl /std:c++17` over src\**\*.cpp -> dist\RpnCalc.exe (tools/build_project, subsystem console).

## Status / TODO
- [x] scaffold
- [ ] (next feature)

## Changelog
- 2026-06-22  scaffolded (console, c++17)
- 2026-06-22  edited src/main.cpp (Rewrite as a reverse-Polish (RPN) calculator. Define constexpr long rpn_eval(const char* expr) that evaluates a space-separated RPN expression of non-negative integers with operators + - * / (integer division), using a fixed-size long array as the stack (NO std::string or std::vector, so it stays usable in constant expressions in C++17). After the function include EXACTLY these compile-time tests: static_assert(rpn_eval(3 4 +) == 7, t1); static_assert(rpn_eval(6 2 -) == 4, t2); static_assert(rpn_eval(2 3 4 * +) == 14, t3); static_assert(rpn_eval(5 1 2 + 4 * + 3 -) == 14, t4); static_assert(rpn_eval(100 10 /) == 10, t5); Then int main() reads one line from stdin with std::getline and prints rpn_eval(line.c_str()). Includes: <iostream>, <string>.)
