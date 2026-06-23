# Compiler Error C2562

> 'identifier' : 'void' function returning a value

## Remarks

The function is declared as **`void`** but returns a value.

This error can be caused by an incorrect function prototype.

This error may be fixed if you specify the return type in the function declaration.

## Example

The following example generates C2562:

```cpp
// C2562.cpp
// compile with: /c
void testfunc() {
   int i;
   return i;   // C2562 delete the return to resolve
}
```