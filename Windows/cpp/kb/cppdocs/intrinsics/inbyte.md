# __inbyte

**Microsoft Specific**

Generates the `in` instruction, returning a single byte read from the port specified by `Port`.

## Syntax

```C
unsigned char __inbyte(
   unsigned short Port
);
```

### Parameters

*Port*\
[in] The port to read from.

## Return value

The byte read from the specified port.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__inbyte`|x86, x64|

**Header file** \<intrin.h>

**END Microsoft Specific**

## Remarks

This routine is only available as an intrinsic.

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)