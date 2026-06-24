# t1_procedural

## Purpose
One or two lines: what this is and why it exists.

## Architecture
Single exe via /recurse. Pure logic in src/Core, I/O adapters in src/Drivers, wired together in Program.cs.

## Status / TODO
- [x] scaffold + first green build
- [ ] (next feature)

## Changelog
- 2026-06-23  scaffolded (console)
- 2026-06-23  edited src/Program.cs (name: TextStats intent: a console program that reports statistics about a line of text behavior: - read one line of text from standard input - print the character count, word count, and vowel count, each on its own labeled line - words are separated by whitespace; vowels are a e i o u, case-insensitive constraints: C# 5, single file, no external packages, use a small static helper function per statistic)
