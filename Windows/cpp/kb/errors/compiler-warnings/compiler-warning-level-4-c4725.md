# Compiler Warning (level 4) C4725

> instruction may be inaccurate on some Pentiums

## Remarks

Your code contains an inline assembly instruction that may not produce accurate results on some Pentium microprocessors.

## Example

The following example generates C4725:

```cpp
// C4725.cpp
// compile with: /W4
// processor: x86
double m32fp = 2.0003e-17;

void f() {
   __asm
   {
      FDIV m32fp   // C4725
   }
}

int main() {
}
```