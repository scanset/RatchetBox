# __writedr

**Microsoft Specific**

Writes the specified value to the specified debug register.

## Syntax

```C
void __writedr(unsigned DebugRegister, unsigned DebugValue); /* x86 */
void __writedr(unsigned DebugRegister, unsigned __int64 DebugValue); /* x64 */
```

### Parameters

*DebugRegister*\
[in] A number from 0 through 7 that identifies the debug register.

*DebugValue*\
[in] A value to write to the debug register.

## Remarks

These intrinsics are available only in kernel mode, and the routines are available only as intrinsics.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__writedr`|x86, x64|

**Header file** \<intrin.h>

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)\
[__readdr](../intrinsics/readdr.md)