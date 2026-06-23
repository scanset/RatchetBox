# is_lvalue_reference Class

Tests if type is an lvalue reference.

## Syntax

```cpp
template <class Ty>
struct is_lvalue_reference;
```

### Parameters

*Ty*\
The type to query.

## Remarks

An instance of this type predicate holds true if the type *Ty* is a reference to an object or to a function, otherwise it holds false. Note that *Ty* may not be an rvalue reference. For more information about rvalues, see [Rvalue Reference Declarator: &&](../cpp/rvalue-reference-declarator-amp-amp.md).

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)\
[Lvalues and Rvalues](../cpp/lvalues-and-rvalues-visual-cpp.md)