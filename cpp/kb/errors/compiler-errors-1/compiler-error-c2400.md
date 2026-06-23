# Compiler Error C2400

> inline assembler syntax error in 'context'; found 'token'

## Remarks

The token caused a syntax error in the specified context.

## Example

The following example generates C2400:

```cpp
// C2400.cpp
// processor: x86
int main() {
   __asm {
      heh ax,bx;   // C2400, heh is not a valid x86 instruction
      mov ax,bx;   // OK
   }
}
```