# Compiler Error C2869

> 'name' : has already been defined to be a namespace

## Remarks

You cannot reuse a name already used as a namespace.

## Example

The following example generates C2869:

```cpp
// C2869.cpp
// compile with: /c
namespace A { int i; };

class A {};   // C2869, A is already used
```