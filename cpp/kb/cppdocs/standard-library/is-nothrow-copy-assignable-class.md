# is_nothrow_copy_assignable Class

Tests whether type has a copy assignment operator that is known to the compiler not to throw.

## Syntax

```cpp
template <class T>
struct is_nothrow_copy_assignable;
```

### Parameters

*T*\
The type to query.

## Remarks

An instance of the type predicate holds true for a referenceable type *T* where `is_nothrow_assignable<T&, const T&>` holds true; otherwise it holds false.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)\
[is_nothrow_assignable Class](../standard-library/is-nothrow-assignable-class.md)