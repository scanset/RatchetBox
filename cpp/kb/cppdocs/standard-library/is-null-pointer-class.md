# is_null_pointer Class

Tests if type is std::nullptr_t.

## Syntax

```cpp
template <class T>
struct is_null_pointer;
```

### Parameters

*T*\
The type to query.

## Remarks

An instance of the type predicate holds true if the type *T* is `std::nullptr_t`, otherwise it holds false.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)