# __incfsbyte, __incfsword, __incfsdword

**Microsoft Specific**

Add one to the value at a memory location specified by an offset relative to the beginning of the `FS` segment.

## Syntax

```C
void __incfsbyte(
   unsigned long Offset
);
void __incfsword(
   unsigned long Offset
);
void __incfsdword(
   unsigned long Offset
);
```

### Parameters

*Offset*\
[in] The offset from the beginning of `FS`.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__incfsbyte`|x86|
|`__incfsword`|x86|
|`__incfsdword`|x86|

**Header file** \<intrin.h>

## Remarks

These intrinsics are only available in kernel mode, and the routines are only available as intrinsics.

**END Microsoft Specific**

## See also

[\__addfsbyte, \__addfsword, \__addfsdword](../intrinsics/addfsbyte-addfsword-addfsdword.md)\
[\__readfsbyte, \__readfsdword, \__readfsqword, \__readfsword](../intrinsics/readfsbyte-readfsdword-readfsqword-readfsword.md)\
[\__writefsbyte, \__writefsdword, \__writefsqword, \__writefsword](../intrinsics/writefsbyte-writefsdword-writefsqword-writefsword.md)\
[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)