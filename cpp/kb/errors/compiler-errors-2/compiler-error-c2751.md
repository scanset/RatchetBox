# Compiler Error C2751

> 'parameter' : the name of a function parameter cannot be qualified

## Remarks

You cannot use a qualified name as a function parameter.

## Example

The following example generates C2751:

```cpp
// C2751.cpp
// compile with: /c
namespace NS
{
    class C {};
}

void func(int NS::C) {}   // C2751
```