# Compiler Warning (level 1, Error) C4235

> nonstandard extension used: '*keyword*' keyword not supported on this architecture

## Remarks

The compiler doesn't support the keyword you used on the architecture your build is targeting. For example, the [`__asm`](../../assembler/inline/asm.md) keyword is not supported in x64 builds.

This warning is always issued as an error. Use the [warning](../../preprocessor/warning.md) pragma to disable.

## Example

The following example generates C4235 as the [Inline Assembler](../../assembler/inline/inline-assembler.md) is only supported on x86:

```cpp
// C4235.cpp
// processor: x64 (set compiler environment with vcvars64.bat)

int main()
{
    __asm nop   // C4235
}
```