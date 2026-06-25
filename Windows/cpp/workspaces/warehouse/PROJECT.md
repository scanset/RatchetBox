# warehouse

## Purpose
One or two lines: what this is.

## Build
MSVC `cl /std:c++17` over src\**\*.cpp -> dist\warehouse.exe (tools/build_project, subsystem console).

## Status / TODO
- [x] scaffold
- [ ] (next feature)

## Changelog
- 2026-06-24  scaffolded (console, c++17)
- 2026-06-24  added src/core/Item.cpp (composed unit)
- 2026-06-24  added src/core/Warehouse.cpp (composed unit)
- 2026-06-24  added src/core/Picker.cpp (composed unit)
- 2026-06-24  added src/main.cpp (composed unit)
- 2026-06-24  edited src/main.cpp (main.cpp discards each Picker::Run return value, so it never reports the total reserved that the spec requires. Fix it: give each of the 4 threads its own slot to store the int returned by Picker::Run(warehouse, 1, 50) (a std::vector<int> sized 4, each lambda writes its slot by reference); after joining all threads, sum the slots into a total and print a line 'Total reserved: ' followed by that total. The total must equal 100 minus warehouse.QuantityOf(1).)
