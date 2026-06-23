# Compiler Error C2878

> 'name' : a namespace or class of this name does not exist

## Remarks

You made reference to a namespace or class that is not defined.

## Example

The following example generates C2878:

```cpp
// C2878.cpp
// compile with: /c
namespace A {}
namespace B = C;   // C2878 namespace C doesn't exist
namespace B = A;
```