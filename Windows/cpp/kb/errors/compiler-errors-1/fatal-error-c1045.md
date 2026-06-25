# Fatal Error C1045

> compiler limit : linkage specifications nested too deeply

## Remarks

Nested externals exceed the compiler limit. Nested externals are allowed with the external linkage type, such as **`extern`** "C++". Reduce the number of nested externals to resolve the error.