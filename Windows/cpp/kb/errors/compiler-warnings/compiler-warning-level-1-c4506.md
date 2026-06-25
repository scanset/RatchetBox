# Compiler Warning (level 1) C4506

> no definition for inline function 'function'

## Remarks

The given function was declared and marked for inlining but was not defined.

The compiler did not inline the function.

Make sure that external functions to be inlined are declared with the **`extern`** keyword.