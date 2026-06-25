# __invlpg

**Microsoft Specific**

Generates the x86 `invlpg` instruction, which invalidates the translation lookaside buffer (TLB) for the page associated with memory pointed to by *Address*.

## Syntax

```C
void __invlpg(
   void* Address
);
```

### Parameters

*Address*\
[in] A 64-bit address.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__invlpg`|x86, x64|

**Header file** \<intrin.h>

## Remarks

The intrinsic `__invlpg` emits a privileged instruction, and is only available in kernel mode with a privilege level (CPL) of 0.

This routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)