# is_final Class

Tests whether the type is a class type marked `final`.

## Syntax

```cpp
template <class T>
struct is_final;
```

### Parameters

*T*\
The type to query.

## Remarks

An instance of the type predicate holds true if the type *T* is a class type marked `final`, otherwise it holds false. If *T* is a class type, it must be a complete type.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)\
[final Specifier](../cpp/final-specifier.md)