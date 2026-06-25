# warehouse

## Purpose
One or two lines: what this is and why it exists.

## Architecture
Single exe via /recurse. Pure logic in src/Core, I/O adapters in src/Drivers, wired together in Program.cs.

## Status / TODO
- [x] scaffold + first green build
- [ ] (next feature)

## Changelog
- 2026-06-24  scaffolded (console)
- 2026-06-24  added src/Core/Item.cs (composed unit)
- 2026-06-24  added src/Core/Warehouse.cs (composed unit)
- 2026-06-24  added src/Core/Picker.cs (composed unit)
- 2026-06-24  added src/Program.cs (composed unit)
- 2026-06-24  edited src/Program.cs (Program.cs discards each Picker.Run return value, so it never reports the total reserved that the spec requires. Fix it: give each of the 4 threads its own slot to store the int returned by Run(warehouse, 1, 50); after joining all threads, sum those slots into a total and print a line 'Total reserved: ' followed by that total. The total must equal 100 minus QuantityOf(1).)
