# Resource Compiler Error RC2151

> cannot re-use string constants

## Remarks

You are using the same value twice in a **STRINGTABLE** statement. Make sure you are not mixing overlapping decimal and hexadecimal values.

Each ID in a **STRINGTABLE** must be unique. For maximum efficiency use contiguous constants that start on a multiple of 16.