# make_unsigned Class

Makes type or the smallest unsigned type greater than or equal in size to type.

## Syntax

```cpp
template <class T>
struct make_unsigned;

template <class T>
using make_unsigned_t = typename make_unsigned<T>::type;
```

### Parameters

*T*\
The type to modify.

## Remarks

An instance of the type modifier holds a modified-type that is *T* if `is_unsigned<T>` holds true. Otherwise it is the smallest signed type `ST` for which `sizeof (T) <= sizeof (ST)`.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)