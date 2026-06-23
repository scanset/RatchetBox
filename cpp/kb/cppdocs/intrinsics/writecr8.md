# __writecr8

**Microsoft Specific**

Writes the value `Data` to the CR8 register.

## Syntax

```C
void writecr8(
   unsigned __int64 Data
);
```

### Parameters

*Data*\
[in] The value to write to the CR8 register.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__writecr8`|x64|

**Header file** \<intrin.h>

## Remarks

The `__writecr8` intrinsic is only available in kernel mode, and the routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)