# `_iob`

The array of `stdio` control structures.

## Syntax

```C
FILE _iob[_IOB_ENTRIES];
```

## Remarks

Starting with Visual Studio 2015, `_IOB_ENTRIES` is defined as 3 with the introduction of the Universal CRT.
It was previously defined as 20.

Defined in `stdio.h`.

## See also

[Global variables](./global-variables.md)\
[Introducing the Universal CRT](https://devblogs.microsoft.com/cppblog/introducing-the-universal-crt/)