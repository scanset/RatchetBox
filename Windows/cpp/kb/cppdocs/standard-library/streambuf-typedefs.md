# `<streambuf>` typedefs

The `<streambuf>` header provides the following typedefs:

## <a name="streambuf"></a> streambuf

A specialization of `basic_streambuf` that uses **`char`** as the template parameters.

```cpp
typedef basic_streambuf<char, char_traits<char>> streambuf;
```

### Remarks

The type is a synonym for the class template [basic_streambuf](../standard-library/basic-streambuf-class.md), specialized for elements of type **`char`** with default character traits.

## <a name="wstreambuf"></a> wstreambuf

A specialization of `basic_streambuf` that uses **`wchar_t`** as the template parameters.

```cpp
typedef basic_streambuf<wchar_t, char_traits<wchar_t>> wstreambuf;
```

### Remarks

The type is a synonym for the class template [basic_streambuf](../standard-library/basic-streambuf-class.md), specialized for elements of type **`wchar_t`** with default character traits.

## See also

[\<streambuf>](../standard-library/streambuf.md)