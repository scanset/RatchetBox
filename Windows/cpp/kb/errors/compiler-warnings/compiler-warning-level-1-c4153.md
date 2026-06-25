# Compiler Warning (level 1) C4153

> function/data pointer conversion in expression

## Remarks

A function pointer is converted to or from a data pointer. This conversion is allowed under Microsoft extensions (/Ze) but not under ANSI C.