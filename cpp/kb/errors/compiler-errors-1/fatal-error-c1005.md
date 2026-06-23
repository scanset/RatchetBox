# Fatal Error C1005

> string too big for buffer

## Remarks

A string in a compiler intermediate file overflowed a buffer.

You could get this error when the parameter that you pass to either the [/Fd](../../build/reference/fd-program-database-file-name.md) or [/Yl](../../build/reference/yl-inject-pch-reference-for-debug-library.md) compiler options is greater than 256 bytes.