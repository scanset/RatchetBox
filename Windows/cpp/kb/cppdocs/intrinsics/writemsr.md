# __writemsr

**Microsoft Specific**

Generates the Write to Model Specific Register (`wrmsr`) instruction.

## Syntax

```C
void __writemsr(
   unsigned long Register,
   unsigned __int64 Value
);
```

### Parameters

*Register*\
[in] The model-specific register.

*Value*\
[in] The value to write.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__writemsr`|x86, x64|

**Header file** \<intrin.h>

## Remarks

This function may only be used in kernel mode, and this routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)