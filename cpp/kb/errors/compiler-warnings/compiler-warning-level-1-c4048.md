# Compiler Warning (level 1) C4048

> different declared array subscripts : 'identifier1' and 'identifier2'

## Remarks

An expression involves pointers to arrays of different size. The pointers are used without conversion.

This warning may be fixed if you explicitly cast the arrays to the same or equivalent type.