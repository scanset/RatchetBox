# ROBOTS.md - the dotnet ratchet (for AI agents)

A C# / PowerShell ratchet for the [Ratchet](https://github.com/CurtisSlone/Ratchet) engine: the local
model writes C# / PowerShell, the in-box `csc` / PS parser is the Oracle. Humans: see
[README.md](README.md). Operating rules: [SYSTEM.md](SYSTEM.md). Layout: [STRUCTURE.md](STRUCTURE.md).

## Flows

- **`csharp`** - one-off generate -> `csc` compile-check -> repair.
- **`winforms`** - one-off WinForms generate -> compile -> repair.
- **`powershell`** - one-off generate -> parse-check -> repair.
- **`add_file`** / **`edit_file`** - project lifecycle: generate/rewrite -> stage + build the whole
  project (the Oracle) -> repair -> register/log.
- **`plan`** - read a dir of `.spec` files -> model infers an ordered build plan (units in dependency
  order + canonical contracts), schema-forced output.
- **`compose`** - multi-spec composition: `read_specs` -> `plan` -> `foreach add_unit` (each unit
  generated against the project so far via `read_project`, so contracts accumulate) -> whole-project
  build. Specs live in `<ws>/specs/`; the entry unit -> `src/Program.cs`, others -> `src/<Name>.cs`.
- **`add_unit`** - the compose sub-flow (called by `compose`'s foreach, not usually run directly):
  generate one unit against its spec + the project so far -> stage+build -> repair x2 -> register.

## Tools

`csc_check` (compile oracle), `new_project` (console|winforms scaffold: `src/`, `response.rsp`,
`build.ps1`, `project.json`), `build_project` (csc via the response file -> `dist/<name>.exe`),
`stage_and_build` (write + build, the add/edit oracle), `make_launcher` (SAC-safe in-memory `.cmd`),
`read_specs` (read a dir or one `.spec` file), `plan_units` (plan JSON -> the ordered `foreach`
worklist), plus the language-agnostic `read_file`/`read_project`/`register_file`/`log_edit`/`run_app`.

## Composition

A `.spec` is a **structured prompt** (`name`/`intent`/`behavior`/`constraints`), not a parsed grammar.
`compose` plans the build order from a dir of specs and generates each unit in dependency order, each one
seeing the project built so far. **Reliable** for data, interfaces, and units that reference at most one
other unit; **the soft spot** is a unit that must coordinate *several* others' exact signatures at once -
it drifts on constructor arity and method names even with the project shown to it. Prefer interfaces:
they collapse N concrete contracts into one and pull a unit back into the reliable zone. Evidence:
`Tests/Compose_Testing.md` (a concurrent PoS capstone) and `Tests/SPEC_TO_CODE_SERIES_LOG.md`.

## Hard constraints (these bite)

- **C# 5 only** (pre-Roslyn `csc`): NO string interpolation (`$"..."`), NO `?.`, NO expression-bodied
  members, NO tuples. The flow prompts forbid these because the local model reaches for them; the Oracle
  rejects what slips through.
- **stdin to tools** carries a UTF-8 BOM - strip it (read raw bytes).
- **Smart App Control** blocks unsigned exes - run built apps via `make_launcher`'s `.cmd`, never the
  bare exe; never disable SAC.

## Verify

```
ratchet validate-flow <this>     # lint all chains (one-offs + project lifecycle + plan/compose)
ratchet doctor <this>            # preflight csc, Ollama + models, KB integrity
```

Real end-to-end transcripts live in `Tests/` - read them to see exact commands, generated code, and
oracle/build results.
