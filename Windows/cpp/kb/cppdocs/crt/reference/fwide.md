# `fwide`

Unimplemented.

## Syntax

```C
int fwide(
   FILE *stream,
   int mode
);
```

### Parameters

*`stream`*\
Pointer to `FILE` structure (ignored).

*`mode`*\
The new width of the stream: positive for wide character, negative for byte, zero to leave unchanged. (This value is ignored.)

## Return value

This function currently just returns *`mode`*.

## Remarks

The current version of this function doesn't conform to the C Standard.

## Requirements

| Function | Required header |
|---|---|
| **`fwide`** | \<wchar.h> |

For more information, see [Compatibility](../compatibility.md).