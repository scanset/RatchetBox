# `towctrans`

Transforms a character.

## Syntax

```C
wint_t towctrans(
   wint_t c,
   wctrans_t category
);
```

### Parameters

*`c`*\
The character you want to transform.

*`category`*\
An identifier that contains the return value of [`wctrans`](wctrans.md).

## Return value

The character *`c`*, after **`towctrans`** used the transform rule in *`category`*.

## Remarks

The value of *`category`* must have been returned by an earlier successful call to [`wctrans`](wctrans.md).

## Requirements

| Routine | Required header |
|---|---|
| **`towctrans`** | \<wctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See `wctrans` for a sample that uses **`towctrans`**.

## See also

[Data conversion](../data-conversion.md)