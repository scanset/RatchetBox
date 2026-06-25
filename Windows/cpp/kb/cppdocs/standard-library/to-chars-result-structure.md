# to_chars_result struct

## Syntax

```cpp
struct to_chars_result {
    char* ptr;
    errc ec;
};
```

## Members

|Member|Description|
|--|--|
|`ptr`| If `ec` is equal to `errc{}`, the conversion was successful and `ptr` is the one-past-the-end pointer of the written characters. Otherwise, `ptr` has the value of the `to_chars()` parameter `last`, and the contents of the range \[first, last) are unspecified.|
|`ec` | The conversion error code. For specific error codes, see [`errc`](system-error-enums.md#errc).|

## Requirements

**Header:** \<charconv>

**Namespace:** std

**Compiler option:** [`/std:c++17`](../build/reference/std-specify-language-standard-version.md) or later is required.


## See also

[to_chars](charconv-functions.md#to_chars)