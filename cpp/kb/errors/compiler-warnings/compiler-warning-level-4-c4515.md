# Compiler Warning (level 4) C4515

> 'namespace' : namespace uses itself

## Remarks

A namespace is used recursively.

## Example

The following example generates C4515:

```cpp
// C4515.cpp
// compile with: /W4
namespace A
{
   using namespace A; // C4515
}

int main()
{
}
```