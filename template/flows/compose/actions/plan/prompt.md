You are given several `.spec` files (each a short structured prompt) that together describe ONE software
system. They are in NO particular order and may use slightly inconsistent names for the same thing.

Produce a BUILD PLAN as structured data:

- `units`: every unit, in DEPENDENCY ORDER - foundation/data first, then things that depend on them.
  For each unit give its `name`, its `role` (one of: data, interface, component, behavior, gui),
  `dependsOn` (the names of earlier units it needs; empty for foundations), `spec` (the source
  `.spec` filename it came from), and `module` (the folder under `src/` the unit belongs in: copy the
  spec's `module:` line verbatim if it has one, otherwise use `Core` for data/interface/component units;
  the entry unit's module is ignored). Exactly ONE unit should have role behavior or gui as the program
  ENTRY POINT; the rest are data/interface/component library files.
- `contracts`: the canonical shared names/types every unit must agree on. Give the single canonical
  `name` (prefer the name from the spec that DEFINES the thing over one that merely mentions it) and a
  short `type`. Set `normalizedFrom` ONLY when the specs actually used a different name for the same
  thing; leave it empty when they were already consistent.

Infer roles and order from the intent and the cross-references between specs, not from any tags.

SPECS:
{{ specs }}
