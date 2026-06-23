# `_CIpow`

Calculates *`x`* raised to the *`y`* power based on the top values in the stack.

## Syntax

```cpp
void __cdecl _CIpow();
```

## Remarks

This version of the `pow` function has a specialized calling convention that the compiler understands. It speeds up the execution because it prevents copies from being generated and helps with register allocation.

The resulting value is pushed onto the top of the stack.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

**Platform:** x86

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`pow`, `powf`, `powl`](./reference/pow-powf-powl.md)