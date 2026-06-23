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

## See it for real

`Tests/` holds full transcripts of building real projects with this ratchet -
`COMPLEX_TEST_LOG.md` (multi-file C# projects) and `WINFORMS_TEST_LOG.md` (runnable WinForms apps,
including a failure-and-fix). Each records the exact commands, the generated code, the build/oracle
results, and per-turn token counts. It's the fastest way to see what driving a ratchet looks like.

## Good to know

- **C# 5 only.** The in-box `csc` is pre-Roslyn: no string interpolation (`$"..."`), no `?.`, no
  expression-bodied members, no tuples. The flows' prompts steer the model away from these; the Oracle
  catches the rest. (See `SYSTEM.md`.)
- **Smart App Control** blocks unsigned `.exe`s - `make_launcher` writes a `.cmd` that loads the built
  app in-memory so it runs without disabling SAC.
- Operating rules are in `SYSTEM.md`; the layout is in `STRUCTURE.md`.
