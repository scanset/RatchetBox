# t3_interfaces

## Purpose
One or two lines: what this is and why it exists.

## Architecture
Single exe via /recurse. Pure logic in src/Core, I/O adapters in src/Drivers, wired together in Program.cs.

## Status / TODO
- [x] scaffold + first green build
- [ ] (next feature)

## Changelog
- 2026-06-23  scaffolded (console)
- 2026-06-23  edited src/Program.cs (name: Shapes intent: an interface with multiple implementations, used polymorphically behavior: - an interface IShape with a double Area() method and a string Name() method - classes Circle and Rectangle that implement IShape - Main builds a list of IShape holding a circle and a rectangle, then prints each shape's name and area on its own line constraints: C# 5, single file, no external packages)
