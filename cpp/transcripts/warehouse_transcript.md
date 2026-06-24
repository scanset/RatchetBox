# Warehouse - compose transcript (cpp / MSVC cl)

A multi-reference, concurrent app built from four `.spec` files, then corrected with one author pass.
Captured 2026-06-24. This is the real lifecycle: the commands sent to Ratchet, what the local model
returned each pass, the Oracle's verdict, and the one thing the model got wrong plus the fix.

## The app

Four specs under `workspaces/warehouse/specs/` (a thread-safe inventory under contention):

- `item.spec` - **Item**: int Id, std::string Name, int Quantity; constructed from all three. (data)
- `warehouse.spec` - **Warehouse**: thread-safe store; `AddItem`, `Reserve(id, count)` (mutex-guarded,
  decrement if available else false), `QuantityOf(id)`. (component, uses Item)
- `picker.spec` - **Picker**: `Run(warehouse, id, attempts)` calls `Reserve(id, 1)` that many times,
  returns the success count. (component, uses Warehouse)
- `app.spec` - **App**: build a Warehouse + 3 Items (qty 100), launch 4 Pickers on `std::thread`s each
  calling `Run(warehouse, 1, 50)`, join, print final quantities; item 1 must end at `100 - total
  reserved`, never below 0. (entry, uses all three; concurrency)

Dependency shape: `Item -> Warehouse -> Picker -> App`. The entry references three other units (the
multi-reference case).

## Pass 1 - compose

Command sent to Ratchet:

```
ratchet flow ..\RatchetBox\cpp compose --ws warehouse ""
```

The model planned `Item -> Warehouse -> Picker -> App`. In C++ each component is a **declaration header +
a definition source** emitted together (`.h` + `.cpp`), and `project_api` binds the prior units'
**headers** - in C++ the header *is* the contract. What each unit saw and produced:

| Unit | Header bound in (project_api) | Produced | Result |
|---|---|---|---|
| Item | (nothing yet) | `core/Item.h` + `.cpp`, `Item(int, const std::string&, int)` | built |
| Warehouse | `core/Item.h` | `Warehouse.h`/`.cpp`, `mutable std::mutex`, `lock_guard` in every method | built |
| Picker | `Item.h`, `Warehouse.h` | `Picker.h`/`.cpp`, `static int Run(Warehouse&, int, int)` | built |
| App | all three headers | `main.cpp`, 4 `std::thread`s | built |

`compose: success`. Every unit built first try - **no signature drift, no repair loops.** Each component
`.cpp` compiled as its own translation unit and linked (real separate compilation). The model chose
idiomatic C++ on its own: a `namespace core`, `const Item&` parameters, `std::map<int, Item>` storage,
and a `static` `Picker::Run` (the picker is stateless) - and coordinated all of it across the headers,
the sources, and the entry with no drift, because `project_api` showed it the real headers.

Run (5x, checking the concurrency invariant - 4 pickers x 50 attempts = 200 tries on item 1's 100 stock):

```
Final quantities: Item 1: 0   Item 2: 100   Item 3: 100
```

Item 1 ends at exactly 0 every run, never negative - the `std::mutex` holds, no race.

## What the model got wrong

The spec said item 1 must end at `100 - the TOTAL RESERVED across all pickers`. `Picker::Run` correctly
**returned** its success count, but `main.cpp` **discarded every return value**:

```cpp
core::Picker::Run(warehouse, 1, 50);   // <- return value thrown away; total never reported
```

It compiled and ran (the Oracle only checks that it compiles and links), but it under-implemented the spec -
the "total reserved" was never printed. A behavior gap the compiler cannot catch.

## Pass 2 - author correction (edit_file)

Command sent to Ratchet:

```
ratchet flow ..\RatchetBox\cpp edit_file --ws warehouse "src/main.cpp <correction>"
```

Correction text:

> main.cpp discards each Picker::Run return value, so it never reports the total reserved that the spec
> requires. Fix it: give each of the 4 threads its own slot to store the int returned by
> Picker::Run(warehouse, 1, 50) (a std::vector<int> sized 4, each lambda writes its slot by reference);
> after joining all threads, sum the slots into a total and print a line 'Total reserved: ' followed by
> that total. The total must equal 100 minus warehouse.QuantityOf(1).

The model rewrote `main.cpp` to capture, sum, and print the returns (built first try):

```cpp
std::vector<int> results(4);
threads.emplace_back([&warehouse, &results, i] {
    results[i] = core::Picker::Run(warehouse, 1, 50);   // each thread stores its count
});
...
int total = 0; for (int result : results) total += result;
std::cout << "Total reserved: " << total << "\n";
```

Corrected run:

```
Total reserved: 100   Final quantities: Item 1: 0   Item 2: 100   Item 3: 100
```

Total reserved (100) = 100 - item 1 (0). Spec satisfied.

## Takeaways

- **The multi-reference frontier stayed closed.** Four units, the entry referencing three others, zero
  signature drift, zero repair loops - `project_api` (the headers) did its job.
- **Real separate compilation.** Each component is a `.h` declaration + a `.cpp` definition compiled on its
  own and linked; the model coordinated a self-chosen `namespace core` across all of them.
- **Concurrency composed correctly.** The mutex-guarded Warehouse held under four contending threads.
- **The Oracle gates contracts, not behavior.** The under-specified output compiled and ran fine; one
  `edit_file` author pass fixed it. Compiler = contract oracle; author = behavior oracle.

The full per-step prompts and model outputs for this run are in `workspaces/warehouse/runs/<id>/`
(`tools/transcript.ps1 -Ws warehouse` reproduces them).
