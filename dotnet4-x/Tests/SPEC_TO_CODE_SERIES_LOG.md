# Spec-to-code series log (structured prompt, no AST)

A graduated series testing whether a small local model can turn a **structured-prompt spec** directly
into working code, with NO spec engine / no AST. The spec is just a structured PROMPT (this is the
deliberate simplification after the spec-engine/AST path was reset - see `memory/spec-pipeline.md`).
Each test is its own `workspaces/<name>` project; the spec is fed as the `request` to the **`edit_file`
write flow** (`read -> generate -> stage_and_build -> repair x2 -> log -> done`); the whole-project
`csc` build is the oracle. Companion to `WINFORMS_TEST_LOG.md` (that one used free-English requests;
this one uses structured specs and climbs from procedural to a coordination-heavy GUI capstone).

- Generation model: `qwen3-coder:latest` (Ollama, local)
- Oracle: whole-project `csc` build (`build_project` / `stage_and_build`); console -> exe, GUI -> winexe
- Date: 2026-06-23
- Flow per test: `new_project <name> [console|winforms]` -> write `app.spec` -> `ratchet flow dotnet-4x
  edit_file --ws <name> "src/Program.cs <spec>"` -> `build_project <name>` -> run
- The spec convention (v0): four labeled sections - `name` / `intent` / `behavior` (a list of rules) /
  `constraints`. Not parsed; the model reads it as a richer task. The `generate` node also KB-searches
  the top-2 dotnet refs on the task text.

## Headline

**7/7 built first try. ZERO repairs across the entire series.** T1-T6 are behaviorally correct. T7
(the capstone) compiles and animates but is behaviorally PARTIAL - and it fails in exactly one place:
cross-entity coordination. The key finding is that the break is not on the complexity curve, it is on
the **coordination curve**, and the only gate in the loop (a compiler) is blind to it.

| # | Test | Kind | Built | Behavior | Run result |
|---|------|------|-------|----------|-----------|
| 1 | t1_procedural | procedural | 1st try | PASS | `Hello World` -> 11 chars / 2 words / 3 vowels |
| 2 | t2_oop | OOP | 1st try | PASS | deposit/withdraw; must-fail withdrawal failed; balance 120 |
| 3 | t3_interfaces | interface | 1st try | PASS | `IShape` -> Circle 78.54 / Rectangle 24, polymorphic |
| 4 | t4_inheritance | inheritance | 1st try | PASS | abstract base + 3 overrides: Buddy/Whiskers/Betsy |
| 5 | t5_concurrency | threads | 1st try | PASS | 4 threads, out-of-order finish, total 500000500000 |
| 6 | t6_gui | WinForms | 1st try | PASS | winexe; TextBox+Button(Greet)+Label+Click+"Hello, " |
| 7 | t7_capstone | WinForms sim | 1st try | PARTIAL | compiles + animates; cross-entity logic wrong |

Every run took the identical chain: `edit_file.read -> generate -> build(stage_and_build) -> log ->
done`. The repair branches (`fix -> rebuild`, `fix2 -> rebuild2`) never fired once.

---

## T1 - procedural (TextStats)

### Input (`workspaces/t1_procedural/app.spec`)
```
name: TextStats
intent: a console program that reports statistics about a line of text
behavior:
  - read one line of text from standard input
  - print the character count, word count, and vowel count, each on its own labeled line
  - words are separated by whitespace; vowels are a e i o u, case-insensitive
constraints: C# 5, single file, no external packages, use a small static helper function per statistic
```
### Output (run, stdin `Hello World`)
```
Character count: 11
Word count: 2
Vowel count: 3
```
Result: PASS first try. One static helper per statistic (`GetCharCount`/`GetWordCount`/`GetVowelCount`)
as the constraint asked. Correct counts.

## T2 - OOP (BankAccount)
Spec: class `Account` (owner, balance); `deposit`; `withdraw` only if sufficient funds, returns
success; Main does a few ops including one that must fail. Run: `Initial 100 -> deposit 150 ->
withdraw 120 -> withdraw 200: Failed -> Final 120`. PASS first try - the must-fail withdrawal correctly
returned failure.

## T3 - interfaces (Shapes)
Spec: `IShape { double Area(); string Name(); }`, `Circle` + `Rectangle` implement it, Main iterates a
`List<IShape>`. Run: `Circle 78.53975 / Rectangle 24`. PASS first try, genuine polymorphism via the
interface.

## T4 - inheritance (Animals)
Spec: abstract `Animal` (Name, abstract `Speak()`); `Dog`/`Cat`/`Cow` override; Main iterates a
`List<Animal>`. Run: `Buddy/Woof!, Whiskers/Meow!, Betsy/Moo!`. PASS first try, abstract-method
override dispatch correct.

## T5 - concurrency (ParallelSum)
Spec: split 1..1000000 into 4 ranges, sum each on its own `System.Threading.Thread`, combine safely,
print partials as they finish then the total; C# 5, no async. Run: 4 partial sums printed **out of
order** (real concurrency), grand total `500000500000` correct. PASS first try - thread-safe combine,
no async, no repair. The hardest console test and it was clean.

## T6 - GUI (Greeter, WinForms)
Spec: a window with a TextBox, a Button labeled Greet, a Label; click sets label to "Hello, " + textbox
text. Built to winexe first try. Code contains the three controls, a `Click` handler, the `"Hello, "`
greeting, `Application.Run`. PASS (window not run here; verified by build + control/handler inspection).

---

## T7 - capstone (TrafficSim, WinForms) - the real test

### Input (`workspaces/t7_capstone/app.spec`)
```
name: TrafficSim
intent: a WinForms simulation of independent traffic lights and moving cars on a road
behavior:
  - a window that draws a horizontal road across it
  - two or more traffic lights, each drawn as a colored square (red, yellow, or green)
  - each light cycles green to yellow to red to green on its OWN timer, independently of the others
  - several cars drawn as small rectangles that move left to right
  - each car has its own speed and its own acceleration, so they move differently to represent traffic
  - a car slows down and stops before a light that is red or yellow, and accelerates again once that light is green
  - the whole scene animates continuously on a timer and repaints
constraints: C# 5, WinForms, single file, no external packages
```
### Output
Built to `dist/t7_capstone.exe` (winexe) **first try, no repair**. 172 lines, classes
`TrafficSim`/`TrafficLight`/`Car`, a 20ms WinForms `Timer`, `OnPaint`/`Invalidate`, per-car `speed` +
`acceleration`, light state machine. The window cannot be run/observed here, so behavior was judged by
reading the code and simulating the physics (workflow `capstone-behavior-audit`, 5 adversarial
auditors).

### Behavior audit (what compiled vs what actually works)
| Behavior | Verdict | Why |
|----------|---------|-----|
| per-car speed + acceleration | **correct** | distinct values per car (`speed=1.0+i*0.2`, `accel=0.01*(i+1)`); real integration accel->speed->position each tick |
| animation + drawing | **partial** | timer->Invalidate->OnPaint works, double-buffered; but lights drawn `30x80` **rectangles, not the squares the spec asked for** |
| independent lights | **partial** | each light has its own `timer` field + phase offset (`state=i%3`), BUT all share one period and cross the `>100` threshold on the SAME frame -> phase-shifted **lockstep, not independent**. Also the cycle is `(state+1)%3` over 0=Red,1=Yellow,2=Green -> **green jumps straight to red, skipping yellow** |
| stop on red | **partial (worst)** | the light lookup + brake branch are wired, but braking only fires within +/-50px **centered on** the light (not before it), the distance test is symmetric (brakes for lights behind too), and it fights an **uncapped** `speed += acceleration`. Net: slow cars stop, faster cars drive through red lights |
| runtime soundness | **partial** | no crashes; cars recycle off-screen; simulated 20k ticks -> bounded. But speed is **not reset on recycle** (cars re-enter at accumulated speed); minor per-paint `SolidBrush` not disposed (GC-reclaimed) |

Pattern: own-speed/own-accel (one car, one frame) = correct. Cars-vs-lights and lights-vs-each-other
(two entities, shared time) = partial, every time.

---

## Findings

1. **The break is on the COORDINATION curve, not the complexity curve.** Every passing result (T1-T6 +
   the capstone's per-car physics) is **single-locus**: the requirement lives inside one function/object.
   Every capstone failure is **multi-locus**: N objects sharing a clock (independent light timing), or
   one object reacting to another across space + time (a car stopping before the light ahead). The model
   emits code that NAMES all the right pieces (`present=true`) but the RELATIONSHIPS between them are
   wrong. A structured prompt is a faithful enough spec for self-contained logic; it under-specifies
   cross-entity invariants, and the model fills the gap with locally-plausible, globally-wrong code.

2. **Zero repairs is a statement about the gate, not about correctness.** The only oracle in the loop is
   the project build = a compiler. It proves well-formed C#; it says nothing about whether a car stops or
   a light cycles in the right order. Compilability and correctness are different properties and only the
   first was ever checked - so 7/7 "first try" is real for syntax and misleading for behavior.

3. **This is exactly where an IR/AST would earn its keep** (reconciles the AST removal). Removing the AST
   was right for T1-T6 (single-locus needs no IR). But the capstone's dropped invariants -
   one-timer-per-light-with-its-own-period, brake-BEFORE-not-at, cycle order green->yellow->red, lights
   are squares - are precisely the cross-entity constraints a flat prompt can't pin and a structured IR
   can. The series locates the exact threshold where structure starts paying off, and not a test sooner.

## Implications / follow-ups (not yet implemented)

- **A compiler is not an acceptance test.** Past single-entity logic the loop needs a SECOND, behavioral
  oracle: have the flow generate a headless harness / assertions (e.g. "after T ticks with a red light at
  x, car.speed==0 and car.x < light.x") and gate on those. The capstone is the case that would flip from
  partial to caught + repaired.
- **The spec should encode RELATIONSHIPS, not just entities + attributes.** Cross-entity invariants need
  to be first-class checkable constraints (the place a thin IR helps).
- **Decompose multi-entity tasks before generation.** Split a capstone-class task into single-locus units
  the model is reliably good at (render one light by state; integrate one car's motion) + an explicitly
  specified, separately verified coordination layer (the shared clock; the car-light rule).

Per-test code lives in `workspaces/t1_procedural` .. `workspaces/t7_capstone`; per-run step traces in
`runs/<id>/`. Capstone behavior audit: workflow `capstone-behavior-audit` (2026-06-23 transcript).
