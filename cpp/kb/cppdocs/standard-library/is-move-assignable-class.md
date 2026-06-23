# is_move_assignable Class

Tests if the type can be move assigned.

## Syntax

```cpp
template <class T>
struct is_move_assignable;
```

### Parameters

*T*\
The type to query.

## Remarks

A type is move assignable if an rvalue reference to the type can be assigned to a reference to the type. The type predicate is equivalent to `is_assignable<T&, T&&>`. Move assignable types include referenceable scalar types and class types that have either compiler-generated or user-defined move assignment operators.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)