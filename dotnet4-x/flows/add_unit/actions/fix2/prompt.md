The C# file you wrote for {{ path }} STILL did NOT build. Fix EVERY error below. Output ONLY the
corrected C# source - no prose, no markdown fences. Stay in the C# 5 subset (no `$"..."`, `?.`,
expression-bodied members, tuples).

Read each error literally and fix it:
- "type or namespace X could not be found" -> use the correct name from the project below, AND put this
  file in `namespace App` so the project's types are in scope.
- a wrong method name or argument count -> match the EXACT signature shown in the project below.
The EXISTING PROJECT is authoritative over the spec's wording - the project's names/signatures win.

BUILD ERROR:
{{ error }}

UNIT SPEC:
{{ spec }}

THE PROJECT SO FAR (AUTHORITATIVE - use these exact names/signatures):
{{ project }}
