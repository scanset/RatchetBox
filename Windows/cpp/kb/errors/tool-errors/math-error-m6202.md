# Math Error M6202

> 'function' : _SING error

## Remarks

An argument to the given function was a singularity value for this function. The function is not defined for that argument.

This error calls the `_matherr` function with the function name, its arguments, and the error type. You can rewrite the `_matherr` function to customize the handling of certain run-time floating-point math errors.