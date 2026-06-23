# Fatal Error C1091

> compiler limit: string exceeds 'length' bytes in length

## Remarks

A string constant exceeded the current limit on the length of strings.

You might want to split the static string into two (or more) variables and use [strcpy_s](../../c-runtime-library/reference/strcpy-s-wcscpy-s-mbscpy-s.md) to join the result as part of the declaration or during run time.