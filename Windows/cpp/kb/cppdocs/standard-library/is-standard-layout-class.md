# is_standard_layout Class

Tests if type is a standard layout.

## Syntax

```cpp
template <class Ty>
struct is_standard_layout;
```

### Parameters

*Ty*\
The type to query

## Remarks

An instance of this type predicate holds true if the type *Ty* is a class that has a standard layout of member objects in memory, otherwise it holds false.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)