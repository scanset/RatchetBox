# Compiler Warning (level 1) C4109

> unexpected identifier 'identifier'

## Remarks

The pragma containing the unexpected identifier is ignored.

## Example

The following example generates C4109:

```cpp
// C4109.cpp
// compile with: /W1 /LD
#pragma init_seg( abc ) // C4109
```