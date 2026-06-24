# t7_capstone

## Purpose
One or two lines: what this is and why it exists.

## Architecture
Single winexe via /recurse. Ui holds Forms built in code; add domain logic under src/Core.

## Status / TODO
- [x] scaffold + first green build
- [ ] (next feature)

## Changelog
- 2026-06-23  scaffolded (winforms)
- 2026-06-23  edited src/Program.cs (name: TrafficSim intent: a WinForms simulation of independent traffic lights and moving cars on a road behavior: - a window that draws a horizontal road across it - two or more traffic lights, each drawn as a colored square (red, yellow, or green) - each light cycles green to yellow to red to green on its OWN timer, independently of the others - several cars drawn as small rectangles that move left to right - each car has its own speed and its own acceleration, so they move differently to represent traffic - a car slows down and stops before a light that is red or yellow, and accelerates again once that light is green - the whole scene animates continuously on a timer and repaints constraints: C# 5, WinForms, single file, no external packages)
