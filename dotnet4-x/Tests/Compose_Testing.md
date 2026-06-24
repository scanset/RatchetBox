# Compose testing log (multi-spec composition)

A graduated series testing the **`compose`** flow: a directory of `.spec` files (one per concern) is
turned into a built multi-file system. Unlike the single-file `csharp`/`edit_file` series (see
`SPEC_TO_CODE_SERIES_LOG.md`), each app here is composed from several specs the model must make agree.
The specs are written to **support good composition** - they pin construction protocols, ownership, and
(for the PoS) the thread-safety contract, so the units have unambiguous contracts to coordinate on.

- Generation model: `qwen3-coder:latest` (Ollama, local)
- Oracle: whole-project `csc` build (`stage_and_build` per unit, `build_project` at the end)
- Date: 2026-06-24
- Flow: `/flow compose --ws <app>` over `<ws>/specs/*.spec`. Internally:
  `read_specs -> plan (model infers ordered units + canonical contracts, schema-forced) -> plan_units
  (worklist) -> foreach[add_unit: readspec -> read_project -> generate -> stage_and_build -> repair x2 ->
  register] -> build_project`. The entry unit (role behavior/gui) -> `src/Program.cs`; others ->
  `src/<Name>.cs`. Each unit is generated against the project built so far (read_project), so contracts
  accumulate; the build links them.

Apps, in increasing complexity:
1. **c1_todo** - data + component + console (OOP composition, pinned constructor/ownership)
2. **c2_shapes** - interface + two implementations + console (polymorphism across units)
3. **c3_pos** - the capstone: a basic Point of Sale with an in-memory thread-safe catalog and concurrent
   checkout terminals (no DB; concurrency simulates terminals contending for limited stock)

---

## App 1 - c1_todo (data + component + console)

> RESULT: 2 of 3 units composed. Plan ordered correctly (Todo data -> TodoList component -> TodoApp
> entry). `Todo.cs` and `TodoList.cs` built and linked against the project. The entry unit `TodoApp`
> (`Program.cs`) FAILED after 2x repair: `CS1061: 'App.TodoList' does not contain a definition for
> 'GetAll'` - it invented `GetAll()` even though the spec PINNED the method as `All()` and read_project
> showed the real `All()`. The multi-reference entry unit drifts on the others' method names even with a
> pinned contract. (Same frontier as the notes fixture, here a method-name drift rather than a ctor
> mismatch.) The data + component layers compose reliably.

### Input (specs)

`todo.spec`
```
name: Todo
intent: a single todo item
behavior:
  - has an int Id, a string Title, and a bool Done
  - constructed from a Title only; Id starts at 0 and Done starts at false
  - the TodoList assigns the real Id when the item is added
constraints: C# 5, namespace App
```
`todolist.spec`
```
name: TodoList
intent: an in-memory list of Todo items
behavior:
  - Add(Todo item) assigns the next Id starting at 1, sets item.Id, stores the item, and returns the Id
  - All() returns all items
  - Complete(int id) sets Done to true on the item with that Id
  - Remove(int id) removes the item with that Id
constraints: C# 5, namespace App
```
`app.spec`
```
name: TodoApp
intent: a console menu over a TodoList
behavior:
  - create a TodoList
  - loop a menu: 1 add, 2 list, 3 complete, 4 quit
  - on add, read a Title, make a Todo from it, and add it to the list
  - on list, print each item as its Id, Title, and [x] if Done else [ ]
  - on complete, read an int id and complete that item
constraints: C# 5, console, namespace App
```

### Output

_(pending run)_

---

## App 2 - c2_shapes (interface + implementations + console)

> RESULT: FULL SUCCESS - all 4 units composed, built, and RAN correctly. IShape (interface) + Circle +
> Rectangle + ShapesApp (entry). Output: `Circle(r=5) 78.53975 / Rect(4x6) 24 / Circle(r=3) 28.27431 /
> Rect(2x8) 16 / total 146.81406`. The entry unit composed cleanly here, unlike App 1 - the likely
> reason: it binds to the INTERFACE (`IShape.Area()`/`Label()`, pinned by ishape.spec) rather than a
> concrete component's method. The interface makes the cross-unit contract explicit and prominent enough
> that the entry unit adheres to it. **Interfaces help composition.**

### Input (specs)

`ishape.spec`
```
name: IShape
intent: a shape that has an area and a label
behavior:
  - this is an interface
  - declares double Area()
  - declares string Label()
constraints: C# 5, namespace App
```
`circle.spec`
```
name: Circle
intent: a circle shape
behavior:
  - a class that implements IShape
  - constructed from a double radius
  - Area() returns 3.14159 * radius * radius
  - Label() returns "Circle(r=" + radius + ")"
constraints: C# 5, namespace App
```
`rectangle.spec`
```
name: Rectangle
intent: a rectangle shape
behavior:
  - a class that implements IShape
  - constructed from a double width and a double height
  - Area() returns width * height
  - Label() returns "Rect(" + width + "x" + height + ")"
constraints: C# 5, namespace App
```
`app.spec`
```
name: ShapesApp
intent: report a list of shapes polymorphically
behavior:
  - build a List of IShape holding a couple of Circles and Rectangles
  - print each shape's Label() and Area() on its own line
  - print the total Area() of all the shapes
constraints: C# 5, console, namespace App
```

### Output

_(pending run)_

---

## App 3 - c3_pos (CAPSTONE: PoS, thread-safe catalog, concurrent terminals)

> RESULT: the leaf + single-reference units composed cleanly, including the CONCURRENCY component; the
> multi-reference units drifted. Plan ordered Product (data) -> Catalog/Sale (components) -> Terminal
> (component) -> PosApp (entry). Composed correct first try: `Product`, `Sale`, and crucially `Catalog`
> - its `TryReserve(id, qty)` is properly `lock`-guarded, checks `Stock >= qty`, decrements atomically
> (the thread-safety contract composed correctly from the spec). DRIFTED: `Terminal.cs` (a component that
> references Product+Sale+Catalog) wrote `new Product(productId)` [1 arg; ctor is Name,Price,Stock] and
> `sale.AddLine(product)` [1 arg; sig is Product,int]; `Program.cs` (entry, references Product+Terminal+
> Catalog) wrote `new Product(name,price)` [missing Stock], `new Terminal(catalog)` [missing id], and
> `catalog.Products` [method called as property]. KEY: the failures are exactly the two units that
> reference SEVERAL others - the frontier is multi-reference, not "the entry" specifically. After
> hand-fixing those wiring drifts (the composed Catalog/Terminal logic + thread orchestration were the
> pipeline's correct work), it builds and RUNS the concurrency: 3 terminals vs stock apple 4 / banana 3 /
> orange 2, each wanting 1 of each -> exactly 2 terminals get the 2 oranges, the 3rd prints "out of
> stock", final stock apple 1 / banana 0 / orange 0, NEVER negative; the losing terminal varies run to
> run (real non-determinism, correctly serialized by Catalog's lock). Concurrency composes fine - it
> lives in the component layer; cross-unit SIGNATURE coordination is the hard part.

### Input (specs)

`product.spec`
```
name: Product
intent: a product in the catalog
behavior:
  - has an int Id, a string Name, a double Price, and an int Stock
  - constructed from a Name, a Price, and a Stock; Id starts at 0
  - the Catalog assigns the real Id when the product is added
constraints: C# 5, namespace App
```
`catalog.spec`
```
name: Catalog
intent: a thread-safe in-memory product catalog shared by checkout terminals
behavior:
  - Add(Product p) assigns the next Id starting at 1, sets p.Id, stores it, and returns the Id
  - Get(int id) returns the Product with that Id, or null if there is none
  - TryReserve(int id, int qty) is thread-safe using a lock: if the product exists and its Stock is at least qty, decrement Stock by qty and return true; otherwise return false
  - Products() returns all products
  - all Stock changes must be safe under concurrent access from multiple threads, so Stock never goes negative
constraints: C# 5, namespace App
```
`sale.spec`
```
name: Sale
intent: one checkout transaction
behavior:
  - has a double Total starting at 0
  - AddLine(Product p, int qty) records a line and adds p.Price times qty to Total
  - LineCount() returns how many lines were added
constraints: C# 5, namespace App
```
`terminal.spec`
```
name: Terminal
intent: a checkout terminal that rings up sales on its own thread against a shared Catalog
behavior:
  - constructed from an int id and a shared Catalog
  - Run() attempts several sales; for each sale it tries to reserve 1 unit of a few product ids by calling Catalog.TryReserve, adds each reserved product to a Sale via AddLine, and prints "Terminal <id>: sale total <Total>"; if a product is out of stock it prints "Terminal <id>: <id> out of stock"
  - Run() is meant to be called on its own System.Threading.Thread
constraints: C# 5, namespace App
```
`app.spec`
```
name: PosApp
intent: simulate concurrent checkout terminals contending for limited stock
behavior:
  - build a Catalog and Add a few Products that have small Stock
  - create 3 Terminals that share that one Catalog
  - start each Terminal's Run on its own System.Threading.Thread, then Join all of them
  - after all threads finish, print the final Stock of every product in the Catalog
  - the thread-safe Catalog.TryReserve must guarantee stock never goes negative despite the concurrent terminals
constraints: C# 5, console, namespace App, use System.Threading.Thread (not async or Task)
```

### Output

_(pending run)_

---

## Findings

| App | Units | Composed | Notes |
|-----|-------|----------|-------|
| c1_todo | 3 | data + component (2/3) | entry drifted: `GetAll()` vs the pinned `All()` |
| c2_shapes | 4 | ALL (builds + runs) | entry binds to the INTERFACE -> 1 contract -> held |
| c3_pos | 5 | leaf + single-ref (3/5); incl. thread-safe Catalog | Terminal + entry (multi-ref) drifted on signatures; runs after hand-fix |

1. **The composition pipeline works.** read_specs -> model plan (ordered units + contracts) -> foreach
   add_unit (each generated against the project so far) -> build. App 2 composed and ran end-to-end
   (4 units), and across all three apps the data / interface / single-reference component layers compose
   reliably. The whole thing is instance-only (a `compose` flow + `read_specs`/`plan_units` tools); the
   Ratchet host did not change.

2. **The frontier is the number of distinct contracts a unit must hold at once - not "the entry".** The
   PoS made this precise: the units that failed (Terminal, PosApp) are exactly the ones referencing
   SEVERAL other units; the leaf and single-reference units (Product, Catalog, Sale) composed. Reliability
   scales inversely with a unit's fan-out to other units' contracts. 0-1 references = reliable; 2+ = the
   drift zone. This is the single-vs-multi-locus finding, now located at the per-unit reference count.

3. **The drift is always the same class: adhering to other units' EXACT signatures** - constructor arity
   (`Product(name,price)` vs `Name,Price,Stock`), method names (`GetAll` vs `All`), method-vs-property
   (`Products` vs `Products()`). The model SEES these in `read_project` but does not reliably adhere when
   juggling several at once. Pinning the spec, the project-authoritative prompt, and 2x repair help but do
   not close it.

4. **Interfaces are the lever.** App 2's entry coordinated with ONE contract (`IShape`) instead of N
   concrete classes, and it composed cleanly. Collapsing several concrete contracts into one interface
   (or a facade) reduces a unit's coordination load into the reliable 0-1 zone. Design implication: for
   composition, define interfaces for the contracts that multi-reference units depend on.

5. **Concurrency is not the hard part.** The thread-safe `Catalog` (lock + `TryReserve`) composed
   correctly from its pinned spec, and the entry's thread orchestration (Thread/Start/Join) was right.
   The concurrency lives in the component layer, which composes well; the failure was ordinary cross-unit
   signature coordination, the same as everywhere else.

### Next lever (not yet built)
Bind a focused, prominent API summary - the exact public signatures (ctors, methods) of a unit's
dependencies - into multi-reference units' generation, richer than `read_project`'s full dump. That is
the thin IR carrying the API, the concrete form of the "design contracts" fix. Complement with a
behavioral oracle for the runtime form (the capstone lesson from `SPEC_TO_CODE_SERIES_LOG.md`). The hand
edits to `c3_pos` (3 signature lines in Terminal.cs + Program.cs) are noted in this log; everything else
in c3_pos is the pipeline's own output.
