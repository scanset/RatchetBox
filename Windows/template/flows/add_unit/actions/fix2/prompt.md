The file you wrote for {{ path }} STILL did NOT build. Fix EVERY error below. Output ONLY the corrected
source - no prose, no markdown fences.

Read each error literally and fix it:
- an unknown / undefined type or symbol -> use the correct name from the API below, and make sure this unit
  shares the project's module/namespace so the other units are in scope (CHANGE_ME: your convention).
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
