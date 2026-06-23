# Compiler Warning (level 4) C4057

> 'operator' : 'identifier1' indirection to slightly different base types from 'identifier2'

## Remarks

Two pointer expressions refer to different base types. The expressions are used without conversion.

### To fix by checking the following possible causes

1. Mixing signed and unsigned types.

1. Mixing **`short`** and **`long`** types.