# Compiler Warning (level 1 and level 4) C4949

> pragmas 'managed' and 'unmanaged' are meaningful only when compiled with '/clr[:option]'

## Remarks

The compiler ignores the [managed](../../preprocessor/managed-unmanaged.md) and unmanaged pragmas if the source code is not compiled with [/clr](../../build/reference/clr-common-language-runtime-compilation.md). This warning is informational.

## Example

The following example generates C4949:

```cpp
// C4949.cpp
// compile with: /LD /W1
#pragma managed   // C4949
```

When **#pragma unmanaged** is used without **/clr**, C4949 is a level 4 warning.

The following example generates C4949:

```cpp
// C4949b.cpp
// compile with: /LD /W4
#pragma unmanaged   // C4949
```