# t4_inheritance

## Purpose
One or two lines: what this is and why it exists.

## Architecture
Single exe via /recurse. Pure logic in src/Core, I/O adapters in src/Drivers, wired together in Program.cs.

## Status / TODO
- [x] scaffold + first green build
- [ ] (next feature)

## Changelog
- 2026-06-23  scaffolded (console)
- 2026-06-23  edited src/Program.cs (name: Animals intent: a base class with derived classes overriding behavior, used polymorphically behavior: - an abstract base class Animal with a Name property and an abstract string Speak() method - classes Dog, Cat, and Cow that derive from Animal and override Speak - Main builds a list of Animal holding one of each, then prints each animal's name and what it speaks constraints: C# 5, single file, no external packages)
