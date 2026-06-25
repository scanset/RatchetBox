# __sidt

**Microsoft Specific**

Stores the value of the interrupt descriptor table register (IDTR) in the specified memory location.

## Syntax

```C
void __sidt(void * Destination);
```

### Parameters

*Destination*\
[in] A pointer to the memory location where the IDTR is stored.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__sidt`|x86, x64|

**Header file** \<intrin.h>

## Remarks

The `__sidt` function is equivalent to the `SIDT` machine instruction. For more information, search for the document, "Intel Architecture Software Developer's Manual, Volume 2: Instruction Set Reference," at the [Intel Corporation](https://software.intel.com/articles/intel-sdm) site.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)\
[__lidt](../intrinsics/lidt.md)