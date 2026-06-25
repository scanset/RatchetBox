# Compiler Error C2443

> operand size conflict

## Remarks

The instruction requires operands to be the same size.

## Example

The following example generates C2443:

```cpp
// C2443.cpp
// processor: x86
short var;
int main() {
   __asm xchg ax,bl   // C2443
   __asm mov al,red   // C2443
   __asm mov al,BYTE PTR var   // OK
}
```