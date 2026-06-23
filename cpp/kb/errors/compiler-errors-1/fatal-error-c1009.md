# Fatal Error C1009

> compiler limit : macros nested too deeply

## Remarks

The compiler tried to expand too many macros at the same time. The compiler has a limit of 256 levels of nested macros. Split nested macros into simpler macros.