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

## Tools

`csc_check` (compile oracle), `new_project` (console|winforms scaffold: `src/`, `response.rsp`,
`build.ps1`, `project.json`), `build_project` (csc via the response file -> `dist/<name>.exe`),
`stage_and_build` (write + build, the add/edit oracle), `make_launcher` (SAC-safe in-memory `.cmd`),
plus the language-agnostic `read_file`/`read_project`/`register_file`/`log_edit`/`run_app`.

## Hard constraints (these bite)

- **C# 5 only** (pre-Roslyn `csc`): NO string interpolation (`$"..."`), NO `?.`, NO expression-bodied
  members, NO tuples. The flow prompts forbid these because the local model reaches for them; the Oracle
  rejects what slips through.
- **stdin to tools** carries a UTF-8 BOM - strip it (read raw bytes).
- **Smart App Control** blocks unsigned exes - run built apps via `make_launcher`'s `.cmd`, never the
  bare exe; never disable SAC.

## Verify

```
ratchet validate-flow <this>     # lint all five chains
ratchet doctor <this>            # preflight csc, Ollama + models, KB integrity
```

Real end-to-end transcripts live in `Tests/` - read them to see exact commands, generated code, and
oracle/build results.
