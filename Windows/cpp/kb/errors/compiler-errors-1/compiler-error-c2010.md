# Compiler Error C2010

> 'character' : unexpected in macro formal parameter list

## Remarks

The character is used incorrectly in the formal parameter list of a macro definition. Remove the character to resolve the error.

## Example

The following example generates C2010:

```cpp
// C2010.cpp
// compile with: /c
#define mymacro(a|) (2*a)   // C2010
#define mymacro(a) (2*a)   // OK
```