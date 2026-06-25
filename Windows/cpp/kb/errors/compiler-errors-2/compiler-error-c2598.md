# Compiler Error C2598

> linkage specification must be at global scope

## Remarks

The linkage specifier is declared at local scope.

## Example

The following example generates C2598:

```cpp
// C2598.cpp
// compile with: /c
void func() {
   extern "C" int func2();   // C2598
}

extern "C" int func( int i );
```