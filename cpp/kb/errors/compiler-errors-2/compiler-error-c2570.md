# Compiler Error C2570

> 'identifier' : union cannot have base classes

## Remarks

A union derives from a class, structure, or union. This is not allowed. Declare the derived type as a class or structure instead.

## Example

The following example generates C2570:

```cpp
// C2570.cpp
// compile with: /c
class base {};
union hasPubBase : public base {};   // C2570
union hasNoBase {};   // OK
```