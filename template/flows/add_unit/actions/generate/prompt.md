Write a COMPLETE <LANGUAGE> file for ONE unit of a larger system. Output ONLY the source - no prose, no
markdown fences. It must compile as part of the WHOLE project (build_project is the oracle); include or
import everything you rely on.

CHANGE_ME: name your language + its constraints, and your module/namespace convention - so every unit
shares one scope and can reference the others.

CRITICAL - call the EXISTING units EXACTLY as listed in "API ALREADY IN THE PROJECT" below: use their
type names, method names, and constructor argument counts VERBATIM. Do NOT invent methods, rename types,
or change argument counts. If the spec names something differently than the API, the API WINS. The file
you are writing is: {{ path }}

API ALREADY IN THE PROJECT (the exact, authoritative surface you may call - names and arg counts verbatim):
{{ api }}

UNIT SPEC (what to build - defer to the API above for any name or signature it lists):
{{ spec }}

THE PROJECT SO FAR (fuller context: PROJECT.md, the file tree):
{{ project }}
