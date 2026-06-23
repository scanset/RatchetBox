# Compiler Warning (level 3) C4159

> #pragma pragma(pop,...) : has popped previously pushed identifier '*identifier*'

## Remarks

Your source code contains a **push** instruction with an identifier for a pragma followed by a **pop** instruction without an identifier. As a result, *identifier* is popped, and subsequent uses of *identifier* may cause unexpected behavior.

## Example

To avoid this warning, give an identifier in the **pop** instruction. For example:

```cpp
// C4159.cpp
// compile with: /W3
#pragma pack(push, f)
#pragma pack(pop)   // C4159

// using the identifier resolves the warning
// #pragma pack(pop, f)

int main()
{
}
```