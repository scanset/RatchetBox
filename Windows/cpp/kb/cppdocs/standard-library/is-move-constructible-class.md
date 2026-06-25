# is_move_constructible class

Tests whether the type can be constructed by using a move operation.

## Syntax

```cpp
template <class T>
struct is_move_constructible;
```

### Parameters

*T*\
The type to be evaluated.

## Remarks

A type predicate that evaluates to **`true`** if the type *T* can be constructed by using a move operation. This predicate is equivalent to `is_constructible<T, T&&>`. A type *T* that doesn't have a move constructor, but does have a copy constructor that accepts a `const T&` argument, satisfies `std::is_move_constructible`.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)