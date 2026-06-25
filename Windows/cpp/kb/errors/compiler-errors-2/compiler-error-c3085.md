# Compiler Error C3085

> 'constructor': a constructor cannot be 'keyword'

## Remarks

A constructor was declared incorrectly. See [Override Specifiers](../../extensions/override-specifiers-cpp-component-extensions.md) for more information.

## Example

The following example generates C3085.

```cpp
// C3085.cpp
// compile with: /c /clr
ref struct S {
   S() abstract;   // C3085
   S(S%) abstract;   // C3085
};

ref struct T {
   T() sealed {}   // C3085
   T(T%) sealed {}   // C3085
};
```