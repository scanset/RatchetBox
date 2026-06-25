# Fatal Error C1383

> compiler option /GL is incompatible with the installed version of common language runtime

## Remarks

C1383 occurs when you are using a previous version of the common language runtime with a newer compiler, and when you compile with **/clr** and **/GL.**

To resolve, either do not use **/GL** with **/clr** or install the version of the common language runtime that shipped with your compiler.

For more information, see [/clr (Common Language Runtime Compilation)](../../build/reference/clr-common-language-runtime-compilation.md) and [/GL (Whole Program Optimization)](../../build/reference/gl-whole-program-optimization.md).