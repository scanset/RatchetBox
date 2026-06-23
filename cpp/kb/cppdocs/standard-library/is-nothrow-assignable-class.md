# is_nothrow_assignable Class

Tests whether a value of *From* type can be assigned to *To* type and the assignment is known not to throw.

## Syntax

```cpp
template <class To, class From>
struct is_nothrow_assignable;
```

### Parameters

*To*\
The type of the object that receives the assignment.

*From*\
The type of the object that provides the value.

## Remarks

The expression `declval<To>() = declval<From>()` must be well-formed and must be known to the compiler not to throw. Both *From* and *To* must be complete types, **`void`**, or arrays of unknown bound.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)