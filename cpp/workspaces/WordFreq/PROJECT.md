# WordFreq

## Purpose
One or two lines: what this is.

## Build
MSVC `cl /std:c++17` over src\**\*.cpp -> dist\WordFreq.exe (tools/build_project, subsystem console).

## Status / TODO
- [x] scaffold
- [ ] (next feature)

## Changelog
- 2026-06-22  scaffolded (console, c++17)
- 2026-06-22  edited src/main.cpp (Replace main: read all whitespace-separated words from stdin until EOF, lowercase each word and strip non-alphanumeric characters from its ends, count occurrences, then print each distinct word and its count as 'word count' one per line, sorted by count descending and then word ascending. Use <iostream>, <string>, <map>, <vector>, <algorithm>, <cctype>.)
