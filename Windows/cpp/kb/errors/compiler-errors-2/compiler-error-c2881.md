# Compiler Error C2881

> 'namespace1' : is already used as an alias for 'namespace2'

## Remarks

You cannot use the same name as an alias for two namespaces.

## Example

The following example generates C2881:

```cpp
// C2881.cpp
// compile with: /c
namespace A {
   int k;
}

namespace B {
   int i;
}

namespace C = A;
namespace C = B;   // C2881 C is already an alias for A
```