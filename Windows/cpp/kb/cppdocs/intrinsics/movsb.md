# __movsb

**Microsoft Specific**

Generates a Move String (`rep movsb`) instruction.

## Syntax

```C
void __movsb(
   unsigned char* Destination,
   unsigned const char* Source,
   size_t Count
);
```

### Parameters

*Destination*\
[out] A pointer to the destination of the copy.

*Source*\
[in] A pointer to the source of the copy.

*Count*\
[in] The number of bytes to copy.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__movsb`|x86, x64|

**Header file** \<intrin.h>

## Remarks

The result is that the first `Count` bytes pointed to by `Source` are copied to the `Destination` string.

This routine is only available as an intrinsic.

## Example

```cpp
// movsb.cpp
// processor: x86, x64
#include <stdio.h>
#include <intrin.h>

#pragma intrinsic(__movsb)

int main()
{
    unsigned char s1[100];
    unsigned char s2[100] = "A big black dog.";
    __movsb(s1, s2, 100);

    printf_s("%s %s", s1, s2);
}
```

```Output
A big black dog. A big black dog.
```

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)