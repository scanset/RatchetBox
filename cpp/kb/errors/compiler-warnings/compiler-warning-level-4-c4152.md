# Compiler Warning (level 4) C4152

> non standard extension, function/data ptr conversion in expression

## Remarks

A function pointer is converted to or from a data pointer. This conversion is allowed under Microsoft extensions (/Ze) but not under ANSI C.