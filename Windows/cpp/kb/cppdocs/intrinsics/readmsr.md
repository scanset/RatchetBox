# __readmsr

**Microsoft Specific**

Generates the `rdmsr` instruction, which reads the model-specific register specified by **`register`** and returns its value.

## Syntax

```C
__int64 __readmsr(
   int register
);
```

### Parameters

*register*\
[in] The model-specific register to read.

## Return value

The value in the specified register.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__readmsr`|x86, x64|

**Header file** \<intrin.h>

## Remarks

This function is only available in kernel mode, and the routine is only available as an intrinsic.

For more information, see the AMD documentation.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)