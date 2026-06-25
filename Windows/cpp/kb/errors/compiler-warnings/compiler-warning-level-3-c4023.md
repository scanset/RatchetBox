# Compiler Warning (level 3) C4023

> 'symbol' : based pointer passed to unprototyped function : parameter number

## Remarks

Passing a based pointer to an unprototyped function causes the pointer to be normalized, with unpredictable results.

This warning may be fixed if you use prototype functions that are passed based pointers.