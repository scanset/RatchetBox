# Compiler Error C2431

> illegal index register in 'identifier'

## Remarks

The ESP register is scaled or used as both index and base register. The SIB encoding for the x86 processor does not allow either.

## Example

The following example generates C2431:

```cpp
// C2431.cpp
// processor: x86
int main() {
   _asm mov ax, [ESI + 2*ESP]   // C2431
   _asm mov ax, [esp + esp]   // C2431
}
```