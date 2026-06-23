# __inword

**Microsoft Specific**

Reads data from the specified port using the `in` instruction.

## Syntax

```C
unsigned short __inword(
   unsigned short Port
);
```

### Parameters

*Port*\
[in] The port to read from.

## Return value

The word of data read.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__inword`|x86, x64|

**Header file** \<intrin.h>

## Remarks

This routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)