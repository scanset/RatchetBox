# Compiler Warning (level 4) C4931

> we are assuming the type library was built for *number*-bit pointers

## Remarks

Explicit information was not supplied with the **ptrsize** attribute of the [#import](../../preprocessor/hash-import-directive-cpp.md) directive; the compiler concluded that pointer size of the type library is *number*.

This warning is off by default. See [Compiler Warnings That Are Off by Default](../../preprocessor/compiler-warnings-that-are-off-by-default.md) for more information.