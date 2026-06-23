# `_CIatan2`

Calculates the arctangent of *`x`* / *`y`* where *`x`* and *`y`* are values on the top of the stack.

## Syntax

```cpp
void __cdecl _CIatan2();
```

## Remarks

This version of the `atan2` function has a specialized calling convention that the compiler understands. It speeds up the execution because it prevents copies from being generated and helps with register allocation.

The resulting value is pushed onto the top of the stack.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

**Platform:** x86

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`atan`, `atanf`, `atanl`, `atan2`, `atan2f`, `atan2l`](./reference/atan-atanf-atanl-atan2-atan2f-atan2l.md)