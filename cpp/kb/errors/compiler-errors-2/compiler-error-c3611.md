# Compiler Error C3611

> 'function': a sealed function cannot have a pure-specifier

## Remarks

A sealed function was declared incorrectly.  For more information, see [sealed](../../extensions/sealed-cpp-component-extensions.md).

## Example

The following example generates C3611.

```cpp
// C3611.cpp
// compile with: /clr /c

ref struct V {
   virtual void Test() sealed = 0;   // C3611
   virtual void Test2() sealed;   // OK
   virtual void Test3() = 0;   // OK
};
```