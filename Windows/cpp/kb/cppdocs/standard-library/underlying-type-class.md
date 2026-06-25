# underlying_type Class

Produces the underlying integral type for an enumeration type.

## Syntax

```cpp
template <class T>
struct underlying_type;
```

### Parameters

*T*\
The type to modify.

## Remarks

The `type` member typedef of the class template names the underlying integral type of *T*, when *T* is an enumeration type, otherwise there is no member typedef `type`.

## Requirements

**Header:** \<type_traits>

**Namespace:** std

## See also

[<type_traits>](../standard-library/type-traits.md)