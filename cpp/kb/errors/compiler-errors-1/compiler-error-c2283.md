# Compiler Error C2283

> '*identifier*': pure specifier or abstract override specifier not allowed on unnamed struct

## Remarks

A member function of an unnamed class or structure is declared with a pure specifier, which is not permitted.

## Example

The following example generates C2283:

```cpp
// C2283.cpp
// compile with: /c
struct {
   virtual void func() = 0;   // C2283
};
struct T {
   virtual void func() = 0;   // OK
};
```