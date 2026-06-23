# Floating Point Coprocessor and Calling Conventions

If you are writing assembly routines for the floating point coprocessor, you must preserve the floating point control word and clean the coprocessor stack unless you are returning a **`float`** or **`double`** value (which your function should return in ST(0)).

## See also

[Calling Conventions](../cpp/calling-conventions.md)