# Compiler Warning (level 4) C4306

> '*conversion*': conversion from '*type1*' to '*type2*' of greater size

## Remarks

The identifier is type cast to a larger pointer. The unfilled high bits of the new type are zero-filled.

This warning may indicate an unwanted conversion. The resulting pointer may not be valid.