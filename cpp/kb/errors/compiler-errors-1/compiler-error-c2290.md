# Compiler Error C2290

> C++ 'asm' syntax ignored. Use __asm.

## Remarks

The **`asm`** syntax is reserved for future use. Try [`__asm`](../../assembler/inline/asm.md) instead. For more information, see [Inline Assembler](../../assembler/inline/inline-assembler.md).

## Example

The following example generates C2290:

```cpp
// C2290.cpp
// Compile for 32 bit, i.e. x86 instead of x64

int main()
{
    asm("nop");   // C2290
    __asm { nop } // OK
}
```