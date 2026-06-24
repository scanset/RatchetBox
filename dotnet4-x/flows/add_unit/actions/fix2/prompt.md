The C# file you wrote for {{ path }} STILL did NOT build. Fix EVERY error below. Output ONLY the
corrected C# source - no prose, no markdown fences. Stay in the C# 5 subset (no `$"..."`, `?.`,
expression-bodied members, tuples).

Read each error literally and fix it:
- "type or namespace X could not be found" -> use the correct name from the API below, AND put this
  file in `namespace App` so the project's types are in scope.
- a wrong method name or argument count -> match the EXACT signature shown in the API below.
The EXISTING API is authoritative over the spec's wording - its names, signatures, and arg counts win.

BUILD ERROR:
{{ error }}

API ALREADY IN THE PROJECT (match these signatures verbatim):
{{ api }}

UNIT SPEC:
{{ spec }}

THE PROJECT SO FAR (fuller context):
{{ project }}
