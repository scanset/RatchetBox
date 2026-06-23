# `char_traits<char32_t>` Struct

A struct that is a specialization of the template struct **char_traits\<CharType>** to an element of type **`char32_t`**.

## Syntax

```cpp
template <>
struct char_traits<char32_t>;
```

## Remarks

Specialization allows the struct to take advantage of library functions that manipulate objects of this type **`char32_t`**.

## Requirements

**Header:** \<string>

**Namespace:** std

## See also

[\<string>](../standard-library/string.md)\
[char_traits Struct](../standard-library/char-traits-struct.md)