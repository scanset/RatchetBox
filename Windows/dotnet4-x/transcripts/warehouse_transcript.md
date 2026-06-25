# Warehouse - compose transcript (dotnet-4x / C#)

A multi-reference, concurrent app built from four `.spec` files, then corrected with one author pass.
Captured 2026-06-24. This is the real lifecycle: the commands sent to Ratchet, what the local model
returned each pass, the Oracle's verdict, and the one thing the model got wrong plus the fix.

## The app

Four specs under `workspaces/warehouse/specs/` (a thread-safe inventory under contention):

- `item.spec` - **Item**: int Id, string Name, int Quantity; constructed from all three. (data)
- `warehouse.spec` - **Warehouse**: thread-safe store; `AddItem`, `Reserve(id, count)` (lock-guarded,
  decrement if available else false), `QuantityOf(id)`. (component, uses Item)
- `picker.spec` - **Picker**: `Run(warehouse, id, attempts)` calls `Reserve(id, 1)` that many times,
  returns the success count. (component, uses Warehouse)
- `app.spec` - **App**: build a Warehouse + 3 Items (qty 100), launch 4 Pickers on threads each calling
  `Run(warehouse, 1, 50)`, join, print final quantities; item 1 must end at `100 - total reserved`,
  never below 0. (entry, uses all three; concurrency)

Dependency shape: `Item -> Warehouse -> Picker -> App`. The entry references three other units (the
multi-reference case).

## Pass 1 - compose

Command sent to Ratchet:

```
ratchet flow ..\RatchetBox\dotnet4-x compose --ws warehouse ""
```

The model planned the order `Item -> Warehouse -> Picker -> App`, then built each unit against the API of
the units already built (`project_api` binds it). What each unit saw and produced:

| Unit | API bound in (from project_api) | Result |
|---|---|---|
| Item | (nothing yet) | `class Item { Id, Name, Quantity; Item(int,string,int) }` - built |
| Warehouse | `Item(int id, string name, int quantity)` | lock-guarded `Reserve`/`AddItem`/`QuantityOf` - built |
| Picker | `Item ...`, `Warehouse() AddItem(Item) bool Reserve(int,int) ...` | `int Run(Warehouse,int,int)` looping `Reserve` - built |
| App | `Item ...`, `Picker int Run(Warehouse,int,int)`, `Warehouse ...` | 4 threads wiring Warehouse + Picker - built |

`compose: success`. Every unit built first try - **no signature drift, no repair loops.** The entry, which
calls three other units, used their exact constructors and methods because `project_api` put them in front
of the model.

Run (5x, checking the concurrency invariant - 4 pickers x 50 attempts = 200 tries on item 1's 100 stock):

```
Item 1 quantity: 0   Item 2 quantity: 100   Item 3 quantity: 100
```

Item 1 ends at exactly 0 every run, never negative - the lock holds, no race.

## What the model got wrong

The spec said item 1 must end at `100 - the TOTAL RESERVED across all pickers`. `Picker.Run` correctly
**returned** its success count, but `Program.cs` **discarded every return value**:

```csharp
picker.Run(warehouse, 1, 50);     // <- return value thrown away; total never reported
```

The code compiled and ran (the Oracle only checks that it links), but it under-implemented the spec - the
"total reserved" was never printed. This is a behavior gap a compiler cannot catch.

## Pass 2 - author correction (edit_file)

Command sent to Ratchet:

```
ratchet flow ..\RatchetBox\dotnet4-x edit_file --ws warehouse "src/Program.cs <correction>"
```

Correction text:

> Program.cs discards each Picker.Run return value, so it never reports the total reserved that the spec
> requires. Fix it: give each of the 4 threads its own slot to store the int returned by
> Run(warehouse, 1, 50); after joining all threads, sum those slots into a total and print a line
> 'Total reserved: ' followed by that total. The total must equal 100 minus QuantityOf(1).

The model rewrote `Program.cs` to capture, sum, and print the returns (built first try):

```csharp
results[index] = picker.Run(warehouse, 1, 50);   // each thread stores its count
...
int total = 0; for (...) total += results[i];
Console.WriteLine("Total reserved: " + total.ToString());
```

Corrected run:

```
Total reserved: 100   Item 1 quantity: 0   Item 2 quantity: 100   Item 3 quantity: 100
```

Total reserved (100) = 100 - item 1 (0). Spec satisfied.

## Takeaways

- **The multi-reference frontier stayed closed.** Four units, the entry referencing three others, zero
  signature drift, zero repair loops - `project_api` did its job.
- **Concurrency composed correctly.** The lock-guarded Warehouse held under four contending threads.
- **The Oracle gates contracts, not behavior.** The under-specified output compiled and ran fine; one
  `edit_file` author pass fixed it. Compiler = contract oracle; author = behavior oracle.

The full per-step prompts and model outputs for this run are in `workspaces/warehouse/runs/<id>/`
(`tools/transcript.ps1 -Ws warehouse` reproduces them).
