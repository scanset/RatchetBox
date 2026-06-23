# `char_traits<char>` Struct

A struct that is a specialization of the template struct **char_traits\<CharType>** to an element of type **`char`**.

## Syntax

```cpp
template <>
struct char_traits<char>;
```

## Remarks

Specialization allows the struct to take advantage of library functions that manipulate objects of this type **`char`**.

## Example

See the typedefs and member functions of the class template [`char_traits`](../standard-library/char-traits-struct.md)