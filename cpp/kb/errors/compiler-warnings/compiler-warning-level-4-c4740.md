# Compiler Warning (Level 4) C4740

> flow in or out of inline asm code suppresses global optimization

## Remarks

When there is a jump in to or out of an **`asm`** block, global optimizations are disabled for that function.

## Example

The following example generates C4740:

```cpp
// C4740.cpp
// compile with: /O2 /W4
// processor: x86
int main() {
   __asm jmp tester
   tester:;
}
```