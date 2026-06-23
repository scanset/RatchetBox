# Compiler Error C2432

> illegal reference to 16-bit data in 'identifier'

## Remarks

A 16-bit register is used as an index or base register. The compiler does not support referencing 16-bit data. 16-bit registers cannot be used as index or base registers when compiling for 32-bit code.

## Example

The following example generates C2432:

```cpp
// C2432.cpp
// processor: x86
int main() {
   _asm mov eax, DWORD PTR [bx]   // C2432
}
```