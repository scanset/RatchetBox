You are given several `.spec` files (each a short structured prompt) that together describe ONE software
system. They are in NO particular order and may use slightly inconsistent names for the same thing.

Produce a BUILD PLAN as structured data:

- `units`: every unit, in DEPENDENCY ORDER - foundation/data first, then things that depend on them.
  For each unit give its `name`, its `role` (one of: data, interface, component, behavior, gui),
  `dependsOn` (the names of earlier units it needs; empty for foundations), and `spec` (the source
  `.spec` filename it came from).
- `contracts`: the canonical shared names/types every unit must agree on. Give the single canonical
  `name` and a short `type` description. Set `normalizedFrom` ONLY when the specs actually used a
  different name for the same thing (e.g. one spec said NotesStore, another said NoteStore); leave it
  empty when the specs were already consistent. Do not list a name that appears in only one place.

Infer roles and order from the intent and the cross-references between specs, not from any tags.

SPECS:
{{ specs }}
