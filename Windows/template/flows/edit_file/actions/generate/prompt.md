Apply the requested change to `{{ path }}` and return the COMPLETE updated file (whole-file rewrite, not a
diff). Preserve everything not related to the change, and keep every include/import the file needs.

CHANGE_ME: name your language and the constraints the oracle enforces (standard/version, forbidden syntax).

## Change requested
{{ request }}

## Current contents of {{ path }}
{{ current }}

## Relevant references
{{ refs }}

Output ONLY the full updated source of {{ path }} - no prose, no markdown fences.
