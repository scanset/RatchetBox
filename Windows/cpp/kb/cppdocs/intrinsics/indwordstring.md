# __indwordstring

**Microsoft Specific**

Reads data from the specified port using the `rep insd` instruction.

## Syntax

```C
void __indwordstring(
   unsigned short Port,
   unsigned long* Buffer,
   unsigned long Count
);
```

### Parameters

*Port*\
[in] The port to read from.

*Buffer*\
[out] The data read from the port is written here.

*Count*\
[in] The number of bytes of data to read.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__indwordstring`|x86, x64|

**Header file** \<intrin.h>

## Remarks

This routine is only available as an intrinsic.

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)