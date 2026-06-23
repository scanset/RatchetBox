# `_CIlog`

Calculates the natural logarithm of the top value in the stack.

## Syntax

```cpp
void __cdecl _CIlog();
```

## Remarks

This version of the `log` function has a specialized calling convention that the compiler understands. It speeds up the execution because it prevents copies from being generated and helps with register allocation.

The resulting value is pushed onto the top of the stack.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

**Platform:** x86

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`log`, `logf`, `log10`, `log10f`](./reference/log-logf-log10-log10f.md)