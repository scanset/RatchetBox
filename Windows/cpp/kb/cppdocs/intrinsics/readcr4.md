# __readcr4

**Microsoft Specific**

Reads the CR4 register and returns its value.

## Syntax

```C
unsigned __int64 __readcr4(void);
```

## Return value

The value in the CR4 register.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__readcr4`|x86, x64|

**Header file** \<intrin.h>

## Remarks

The intrinsic is only available in kernel mode, and the routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)