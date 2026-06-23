# Compiler Error C3887

> 'var' : the initializer for a literal data member must be a constant expression

## Remarks

A [literal](../../extensions/literal-cpp-component-extensions.md) data member can only be initialized with a constant expresion.

## Example

The following example generates C3887:

```cpp
// C3887.cpp
// compile with: /clr
ref struct Y1 {
   static int i = 9;
   literal
   int staticConst = i;   // C3887
};
```

Possible resolution:

```cpp
// C3887b.cpp
// compile with: /clr /c
ref struct Y1 {
   literal
   int staticConst = 9;
};
```