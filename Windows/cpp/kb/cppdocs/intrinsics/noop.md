# `__noop`

The **Microsoft-specific** **`__noop`** intrinsic specifies that a function should be ignored. The argument list is parsed, but no code is generated for the arguments. The compiler considers the arguments as referenced for the purposes of compiler warning C4100 and similar analysis. The `__noop` intrinsic is intended for use in global debug functions that take a variable number of arguments.

The compiler converts the **`__noop`** intrinsic to 0 at compile time.

## Example

The following code shows how you could use **`__noop`**.

```cpp
// compiler_intrinsics__noop.cpp
// compile using: cl /EHsc /W4 compiler_intrinsics__noop.cpp
// compile with or without /DDEBUG
#include <stdio.h>

#if DEBUG
   #define PRINT   printf_s
#else
   #define PRINT   __noop
#endif

#define IGNORE(x) { __noop(x); }

int main(int argv, char ** argc)
{
   IGNORE(argv);
   IGNORE(argc);
   PRINT("\nDEBUG is defined\n");
}
```

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)\
[Keywords](../cpp/keywords-cpp.md)