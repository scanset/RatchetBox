# `_CIcos`

Calculates the cosine of the top value in the floating-point stack.

## Syntax

```C
void __cdecl _CIcos();
```

## Remarks

This version of the [`cos`](./reference/cos-cosf-cosl.md) function has a specialized calling convention that the compiler understands. It speeds up the execution because it prevents copies from being generated and helps with register allocation.

The resulting value is pushed onto the top of the floating-point stack.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

**Platform:** x86

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`cos`, `cosf`, `cosl`](./reference/cos-cosf-cosl.md)