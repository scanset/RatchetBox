# __indword

**Microsoft Specific**

Reads one double word of data from the specified port using the `in` instruction.

## Syntax

```C
unsigned long __indword(
   unsigned short Port
);
```

### Parameters

*Port*\
[in] The port to read from.

## Return value

The word read from the port.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__indword`|x86, x64|

**Header file** \<intrin.h>

## Remarks

This routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)