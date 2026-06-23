# is_error_code_enum Structure

Specialization that indicates that [future_errc](../standard-library/future-enums.md#future_errc) is suitable for storing an [error_code](../standard-library/error-code-class.md).

## Syntax

```cpp
template <>
struct is_error_code_enum<Future_errc> : public true_type;
```

## Requirements

**Header:** \<future>

**Namespace:** std

## See also

[Header Files Reference](../standard-library/cpp-standard-library-header-files.md)\
[\<future>](../standard-library/future.md)