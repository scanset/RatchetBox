# is_nothrow_move_constructible Class

Tests whether type has a **`nothrow`** move constructor.

## Syntax

```cpp
template <class Ty>
struct is_nothrow_move_constructible;
```

### Parameters

*Ty*\
The type to query.

## Remarks

An instance of the type predicate holds true if the type *Ty* has a nothrow move constructor, otherwise it holds false.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)