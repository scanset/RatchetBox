# `_acmdln`, `_tcmdln`, `_wcmdln`

Internal CRT global variable. The command line.

## Syntax

```C
char * _acmdln;
wchar_t * _wcmdln;

#ifdef WPRFLAG
   #define _tcmdln _wcmdln
#else
   #define _tcmdln _acmdln
#endif
```

## Remarks

These CRT internal variables store the complete command line. They're exposed in the exported symbols for the CRT, but aren't intended for use in your code. `_acmdln` stores the data as a character string. `_wcmdln` stores the data as a wide character string. `_tcmdln` can be defined as either `_acmdln` or `_wcmdln`, depending on which is appropriate.

## See also

[Global variables](global-variables.md)