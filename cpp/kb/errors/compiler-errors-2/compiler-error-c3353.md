# Compiler Error C3353

> 'delegate' : a delegate can only be created from a global function or a member function of a managed or WinRT type

## Remarks

Delegates, declared with the [delegate](../../extensions/delegate-cpp-component-extensions.md) keyword, can only be declared at global scope.

## Example

The following example generates C3353:

```cpp
// C3353.cpp
// compile with: /clr
delegate int f;   // C3353
```