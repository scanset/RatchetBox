# is_rvalue_reference Class

Tests if type is an rvalue reference.

## Syntax

```cpp
template <class Ty>
struct is_rvalue_reference;
```

### Parameters

*Ty*\
The type to query.

## Remarks

An instance of this type predicate holds true if the type *Ty* is an [rvalue reference](../cpp/rvalue-reference-declarator-amp-amp.md).

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)\
[Lvalues and Rvalues](../cpp/lvalues-and-rvalues-visual-cpp.md)