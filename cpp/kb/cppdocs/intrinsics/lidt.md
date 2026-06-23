# __lidt

**Microsoft Specific**

Loads the interrupt descriptor table register (IDTR) with the value in the specified memory location.

## Syntax

```C
void __lidt(void * Source);
```

### Parameters

*Source*\
[in] Pointer to the value to be copied to the IDTR.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__lidt`|x86, x64|

**Header file** \<intrin.h>

## Remarks

The `__lidt` function is equivalent to the `LIDT` machine instruction, and is available only in kernel mode. For more information, search for the document, "Intel Architecture Software Developer's Manual, Volume 2: Instruction Set Reference," at the [Intel Corporation](https://software.intel.com/articles/intel-sdm) site.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)\
[__sidt](../intrinsics/sidt.md)