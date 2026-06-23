# `char_traits<char16_t>` Struct

A struct that is a specialization of the template struct **char_traits\<CharType>** to an element of type **`char16_t`**.

## Syntax

```cpp
template <>
struct char_traits<char16_t>;
```

## Remarks

Specialization allows the struct to take advantage of library functions that manipulate objects of the type **`char16_t`**.

## Requirements

**Header:** \<string>

**Namespace:** std

## See also

[\<string>](../standard-library/string.md)\
[char_traits Struct](../standard-library/char-traits-struct.md)\
[Thread Safety in the C++ Standard Library](../standard-library/thread-safety-in-the-cpp-standard-library.md)