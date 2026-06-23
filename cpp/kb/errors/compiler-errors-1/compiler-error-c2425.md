# Compiler Error C2425

> 'token' :non-constant expression in 'context'

## Remarks

The token forms part of a non-constant expression in this context.

To fix this issue, replace the token with a constant literal or with a calculation.

## Example

The following example generates C2425:

```cpp
// C2425.cpp
// processor: x86
int main() {
   int i = 3;
   __asm {
      mov eax, [ebp - i]   // C2425
      mov eax, [ebp - 3]   // OK
   }
}
```