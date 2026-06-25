# _disable

**Microsoft Specific**

Disables interrupts.

## Syntax

```C
void _disable(void);
```

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`_disable`|x86, ARM, x64, ARM64|

**Header file** \<intrin.h>

## Remarks

`_disable` instructs the processor to clear the interrupt flag. On x86 systems, this function generates the Clear Interrupt Flag (`cli`) instruction.

This function is only available in kernel mode. If used in user mode, a Privileged Instruction exception is thrown at run time.

On ARM and ARM64 platforms, this routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)