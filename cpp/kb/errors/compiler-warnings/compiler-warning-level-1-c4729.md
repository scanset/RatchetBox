# Compiler Warning (Level 1) C4729

> function too big for flow graph based warnings

## Remarks

This warning is generated when a function is too big to be compiled with reliable checking for situations that would generate a warning. This warning is only generated when the [/Od](../../build/reference/od-disable-debug.md) compiler option used.

To resolve this warning, break the function into smaller functions.