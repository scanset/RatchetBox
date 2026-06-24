# dotnet4-x - a C# / PowerShell ratchet

Generate, edit, and build **Windows C# and PowerShell** with the local model, gated by the in-box
.NET Framework compiler (`csc`) and the PowerShell parser. The model proposes; the compiler decides. No
SDK, NuGet, or MSBuild - this builds with what ships in the box, so it runs on a stock Windows install.

Open it from a [Ratchet](https://github.com/CurtisSlone/Ratchet) checkout:

```
.\ratchet.cmd ..\RatchetBox\dotnet4-x
```

## First: check your toolchain

```
.\ratchet.cmd doctor ..\RatchetBox\dotnet4-x
```

Validates the .NET Framework `csc`, Ollama + the configured models, and the knowledge bases.

## What it can do

| Flow | What it does |
| --- | --- |
| `csharp` | One-off: describe a task, get a complete C# file, compiled by `csc` and repaired. |
| `winforms` | One-off: a runnable WinForms snippet/app, compiled and repaired. |
| `powershell` | One-off: a PowerShell script, parse-checked and repaired. |
| `add_file` | Add a new file to the active project; build the whole project; repair; record it. |
| `edit_file` | Surgically edit an existing file (refactor, fix, extend); rebuild; repair. |
| `plan` | Read a dir of `.spec` files and infer an ordered build plan (units in dependency order + canonical contracts) - the composition planner. |
| `compose` | Build a whole multi-file system from a dir of `.spec` files: plan -> generate each unit in dependency order against the project so far -> build. |

## Drive it

One-off:

```
/flow csharp "a method that reverses a string without Array.Reverse"
```

A real, runnable app (built to an `.exe` under `workspaces/`):

```
/do new_project Calc winforms          # scaffold workspaces/Calc
/ws switch Calc
/flow add_file src/Ui/MainForm.cs      "a form with a textbox and a Reverse button"
/do build_project Calc                 # compile -> dist/Calc.exe
/do make_launcher Calc                 # writes a SAC-safe launch-Calc.cmd; run that
```

## Compose a system from specs

A `.spec` file is a **structured prompt** - `name` / `intent` / `behavior` / `constraints`. Drop a few
in a project's `specs/` dir, one per concern (data, interfaces, components, behavior, gui), and `compose`
builds the whole system: the model reads them all and infers the build order + the shared contracts, then
generates each unit in dependency order against the project built so far (so later units link against the
real signatures of earlier ones), gated by the whole-project build.

```
/do new_project Shop console
/ws switch Shop
# author specs in workspaces/Shop/specs/*.spec  (one unit per file)
/flow compose                          # plan -> foreach add_unit -> build
/do build_project Shop                 # -> dist/Shop.exe
```

A single spec works too - feed one as the request to a write flow:
`/flow edit_file src/Program.cs "<the spec text>"`.

**What composes well:** data, interfaces, and units that reference at most one other unit compose
reliably; a unit that must coordinate *several* other units' exact signatures at once is the soft spot
(it drifts on constructor arity / method names). Interfaces are the lever - they collapse N concrete
contracts into one. See `Tests/Compose_Testing.md` for the evidence.

## See it for real

`Tests/` holds full transcripts of building real projects with this ratchet:
`WINFORMS_TEST_LOG.md` (runnable WinForms apps, including a failure-and-fix),
`SPEC_TO_CODE_SERIES_LOG.md` (one structured-prompt spec -> code, procedural through a WinForms
capstone), and `Compose_Testing.md` (multi-spec composition: a Todo app, an interface-based Shapes app,
and a concurrent Point-of-Sale capstone). Each records the exact inputs, the generated code, and the
build/oracle results - the fastest way to see what driving a ratchet looks like.

## Good to know

- **C# 5 only.** The in-box `csc` is pre-Roslyn: no string interpolation (`$"..."`), no `?.`, no
  expression-bodied members, no tuples. The flows' prompts steer the model away from these; the Oracle
  catches the rest. (See `SYSTEM.md`.)
- **Smart App Control** blocks unsigned `.exe`s - `make_launcher` writes a `.cmd` that loads the built
  app in-memory so it runs without disabling SAC.
- Operating rules are in `SYSTEM.md`; the layout is in `STRUCTURE.md`.
