# Compiler Error C3383

> 'operator new' is not supported with /clr:safe

## Remarks

The output file of a **/clr:safe** compilation is a file that is verifiably type safe, and pointers are not supported.

For more information, see,

- [/clr (Common Language Runtime Compilation)](../../build/reference/clr-common-language-runtime-compilation.md)

- [Common Visual C++ 64-bit Migration Issues](../../build/common-visual-cpp-64-bit-migration-issues.md)

## Example

The following example generates C3383.

```cpp
// C3383.cpp
// compile with: /clr:safe
int main() {
   char* pCharArray = new char[256];  // C3383
}
```