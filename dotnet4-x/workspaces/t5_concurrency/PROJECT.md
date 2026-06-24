# t5_concurrency

## Purpose
One or two lines: what this is and why it exists.

## Architecture
Single exe via /recurse. Pure logic in src/Core, I/O adapters in src/Drivers, wired together in Program.cs.

## Status / TODO
- [x] scaffold + first green build
- [ ] (next feature)

## Changelog
- 2026-06-23  scaffolded (console)
- 2026-06-23  edited src/Program.cs (name: ParallelSum intent: compute a large sum across multiple threads and show concurrency behavior: - split the integers from 1 to 1000000 into 4 contiguous ranges - sum each range on its own System.Threading.Thread, combining the partial results safely - as each thread finishes, print its range and partial sum - after all threads complete, print the grand total constraints: C# 5, single file, no external packages, use .NET Framework threads (not async/await))
