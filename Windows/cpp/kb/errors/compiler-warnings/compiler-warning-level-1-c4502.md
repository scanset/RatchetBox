# Compiler Warning (level 1) C4502

> 'linkage specification' requires use of keyword 'extern' and must precede all other specifiers

## Remarks

A linkage was specified without the **`extern`** keyword. Linkage is not relevant to non-extern types.

The compiler assumed the **`extern`** keyword.