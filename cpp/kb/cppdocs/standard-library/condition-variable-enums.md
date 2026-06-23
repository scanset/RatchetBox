# `<condition_variable>` enums

The `<condition_variable>` header provides the following enums:

## <a name="cv_status"></a> `cv_status`

Supplies symbolic names for the return values of the methods of class template [`condition_variable`](condition-variable-class.md).

```cpp
enum class cv_status
{
    no_timeout,
    timeout
};
```