# __readcr8

**Microsoft Specific**

Reads the CR8 register and returns its value.

## Syntax

```C
unsigned __int64 __readcr8(void);
```

## Return value

The value in the CR8 register.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__readcr8`|x64|

**Header file** \<intrin.h>

## Remarks

The intrinsic is only available in kernel mode, and the routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)