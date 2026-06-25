# __readpmc

**Microsoft Specific**

Generates the `rdpmc` instruction, which reads the performance monitoring counter specified by *counter*.

## Syntax

```C
unsigned __int64 __readpmc(
   unsigned long counter
);
```

### Parameters

*counter*\
[in] The performance counter to read.

## Return value

The value of the specified performance counter.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__readpmc`|x86, x64|

**Header file** \<intrin.h>

## Remarks

The intrinsic is available in kernel mode only, and the routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)