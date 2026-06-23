# Compiler Error C2583

> '*identifier*': '*const/volatile*' 'this' pointer is illegal for constructors/destructors

## Remarks

A [constructor](../../cpp/constructors-cpp.md) or [destructor](../../cpp/destructors-cpp.md) can't be declared **`const`** or **`volatile`**.

## Example

The following example generates C2583:

```cpp
// C2583.cpp
// compile with: /c
struct S
{
    S() const {}   // C2583

    // Try the following line instead:
    // S() {}
};
```