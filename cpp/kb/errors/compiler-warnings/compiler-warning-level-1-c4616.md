# Compiler Warning (level 1) C4616

> #pragma warning : warning number 'number' not a valid compiler warning

## Remarks

The warning number specified in the [warning](../../preprocessor/warning.md) pragma cannot be reassigned. The pragma was ignored.

## Example

The following example generates C4616:

```cpp
// C4616.cpp
// compile with: /W1 /c
#pragma warning( disable : 0 )   // C4616
#pragma warning( disable : 999 )   // OK
#pragma warning( disable : 4998 )   // OK
```