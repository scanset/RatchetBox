# `char_traits<wchar_t>` Struct

A class that is a specialization of the template struct **char_traits\<CharType>** to an element of type **`wchar_t`**.

## Syntax

```cpp
template <>
struct char_traits<wchar_t>;
```

## Remarks

Specialization allows the struct to take advantage of library functions that manipulate objects of this type **`wchar_t`**.

## Requirements

**Header:** \<string>

**Namespace:** std

## See also

[char_traits Struct](../standard-library/char-traits-struct.md)\
[Thread Safety in the C++ Standard Library](../standard-library/thread-safety-in-the-cpp-standard-library.md)