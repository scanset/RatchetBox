# Compiler Error C2223

> left of '->identifier' must point to struct/union

## Remarks

The operand to the left of `->` is not a pointer to a class, structure, or union.

This error can be caused by a left operand that is an undefined variable (therefore type **`int`**).