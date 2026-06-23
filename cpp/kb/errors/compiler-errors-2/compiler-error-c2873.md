# Compiler Error C2873

> 'symbol' : symbol cannot be used in a using-declaration

## Remarks

A **`using`** directive is missing a [namespace](../../cpp/namespaces-cpp.md) keyword. This causes the compiler to misinterpret the code as a [using declaration](../../cpp/using-declaration.md) rather than a [using directive](../../cpp/namespaces-cpp.md#using_directives).