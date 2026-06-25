# Compiler Error C3187

> '`__func__`': is only available within the body of a function

## Remarks

The predefined identifier [`__func__`](../../cpp/func.md) is not available outside the body of a function.

To correct this error, move the identifier inside the body of a function.

## Example

The following example generates C3187:

```cpp
// compile with: /c

#include <iostream>

auto global = __func__;   // C3187, usage in global scope
void func(const char* f = __func__);   // C3187, usage in parameter list

// correct usage inside a function
void test()
{
    std::cout << __func__; // outputs: test
}
```

## See also

[C2457](../compiler-errors-1/compiler-error-c2457.md)