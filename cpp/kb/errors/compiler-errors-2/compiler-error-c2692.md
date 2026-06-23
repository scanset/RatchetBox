# Compiler Error C2692

> 'function_name' : fully prototyped functions required in C compiler with the '/clr' option

## Remarks

When compiling for .NET managed code, the C compiler requires ANSI function declarations. In addition, if a function takes no parameters, it must explicitly declare **`void`** as the parameter type.