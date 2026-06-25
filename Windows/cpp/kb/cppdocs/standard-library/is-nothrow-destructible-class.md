# is_nothrow_destructible Class

Tests whether the type is destructible and the destructor is known to the compiler not to throw.

## Syntax

```cpp
template <class T>
struct is_nothrow_destructible;
```

### Parameters

*T*\
The type to query.

## Remarks

An instance of the type predicate holds true if the type *T* is a destructible type, and the destructor is known to the compiler not to throw. Otherwise, it holds false.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)