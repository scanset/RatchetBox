# Compiler Error C2218

> '__vectorcall' cannot be used with '/arch:IA32'

## Remarks

The **`__vectorcall`** calling convention is only supported in native code on x86 and x64 processors that include Streaming SIMD Extensions 2 (SSE2) and above. For more information, see [`__vectorcall`](../../cpp/vectorcall.md).

To fix this error, change the compiler options to target SSE2, AVX or AVX2 instruction sets. For more information, see [`/arch` (x86)](../../build/reference/arch-x86.md).