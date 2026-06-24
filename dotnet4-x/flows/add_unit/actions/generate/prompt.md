Write a COMPLETE C# file for ONE unit of a larger system. Output ONLY the C# source - no prose, no
markdown fences.

It must compile under the in-box csc (C# 5): include every `using` you rely on, and stay in the C# 5
subset - NO string interpolation (`$"..."`, use `+`), no `?.`, no expression-bodied members, no tuples.

CRITICAL - call the EXISTING types EXACTLY as listed in "API ALREADY IN THE PROJECT" below: use those
class names, method names, and constructor argument counts VERBATIM. Do NOT invent methods, rename types,
or change argument counts. If the spec names something differently than the API (e.g. the spec says
NotesStore but the API has NoteStore), the API WINS. Put this unit in `namespace App` (every existing type
is in namespace App, required for them to be in scope). The file you are writing is: {{ path }}

API ALREADY IN THE PROJECT (the exact, authoritative surface you may call - names and arg counts verbatim):
{{ api }}

UNIT SPEC (what to build - defer to the API above for any name or signature it lists):
{{ spec }}

THE PROJECT SO FAR (fuller context: PROJECT.md, the file tree):
{{ project }}
