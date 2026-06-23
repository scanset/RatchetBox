# Compiler Warning (level 4) C4559

> '*function*' : redefinition; the function gains __declspec(*modifier*)

## Remarks

A function was redefined or redeclared and the second definition or declaration added a **`__declspec`** modifier (*modifier*). This warning is informational. To fix this warning, delete one of the definitions.

## Example

The following example generates C4559:

```cpp
// C4559.cpp
// compile with: /W4 /LD
void f();
__declspec(noalias) void f();   // C4559
```