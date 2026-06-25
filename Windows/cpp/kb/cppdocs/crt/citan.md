# `_CItan`

Calculates the tangent of the top value on the floating-point stack.

## Syntax

```C
void __cdecl _CItan();
```

## Remarks

This version of the [`tan`](./reference/tan-tanf-tanl.md) function has a specialized calling convention that the compiler understands. The function speeds up the execution because it prevents copies from being generated and helps with register allocation.

The resulting value is pushed onto the top of the floating-point stack.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

**Platform:** x86

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`tan`, `tanf`, `tanl`](./reference/tan-tanf-tanl.md)