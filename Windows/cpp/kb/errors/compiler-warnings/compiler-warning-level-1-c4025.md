# Compiler Warning (level 1) C4025

> 'number' : based pointer passed to function with variable arguments: parameter number

## Remarks

Passing a based pointer to a function with variable arguments causes the pointer to be normalized, with unpredictable results. Do not pass based pointers to functions with variable arguments.