# Compiler Error C2212

> 'identifier' : __based not available for pointers to functions

## Remarks

Pointers to functions cannot be declared **`__based`**. If you need code-based data, use the **`__declspec`** keyword or the `data_seg` pragma.