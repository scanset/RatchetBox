# Compiler Warning (level 3) C4316

> Object allocated on the heap may not be aligned for this type.

## Remarks

An over-aligned object allocated by using `operator new` may not have the specified alignment. Override [operator new](../../c-runtime-library/new-operator-crt.md) and [operator delete](../../c-runtime-library/delete-operator-crt.md) for over-aligned types so that they use the aligned allocation routines—for example, [_aligned_malloc](../../c-runtime-library/reference/aligned-malloc.md) and [_aligned_free](../../c-runtime-library/reference/aligned-free.md).

## Example

The following example generates C4316:

```cpp
// C4316.cpp
// Test: cl /W3 /c C4316.cpp

__declspec(align(32)) struct S {}; // C4324

int main() {
    new S; // C4316
}
```