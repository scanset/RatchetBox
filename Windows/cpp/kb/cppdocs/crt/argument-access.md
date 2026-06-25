# Argument access

The `va_arg`, `va_end`, and `va_start` macros provide access to function arguments when the number of arguments is variable. These macros are defined in \<stdarg.h> for ANSI/ISO C compatibility and in \<varargs.h> for compatibility with UNIX System V.

## Argument-access macros

| Macro | Use |
|---|---|
| [`va_arg`](./reference/va-arg-va-copy-va-end-va-start.md) | Retrieve argument from list |
| [`va_end`](./reference/va-arg-va-copy-va-end-va-start.md) | Reset pointer |
| [`va_start`](./reference/va-arg-va-copy-va-end-va-start.md) | Set pointer to beginning of argument list |

## See also

[Universal C runtime routines by category](./run-time-routines-by-category.md)