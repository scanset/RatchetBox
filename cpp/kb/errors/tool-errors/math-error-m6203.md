# Math Error M6203

> 'function' : _OVERFLOW error

## Remarks

The given function result was too large to be represented.

This error calls the `_matherr` function with the function name, its arguments, and the error type. You can rewrite the `_matherr` function to customize the handling of certain run-time floating-point math errors.