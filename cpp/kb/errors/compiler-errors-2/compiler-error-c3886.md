# Compiler Error C3886

> 'var' : a literal data member must be initialized

## Remarks

A [literal](../../extensions/literal-cpp-component-extensions.md) variable must be initialized when it is declaraed.

## Example

The following example generates C3886:

```cpp
// C3886.cpp
// compile with: /clr /c
ref struct Y1 {
   literal int staticConst;   // C3886
   literal int staticConst2 = 0;   // OK
};
```