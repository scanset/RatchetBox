# `<type_traits>` typedefs

The `<type_traits>` header provides the following typedefs:

## <a name="false_type"></a> false_type Typedef

Holds integral constant with false value.

```cpp
typedef integral_constant<bool, false> false_type;
```

### Remarks

The type is a synonym for a specialization of the template `integral_constant`.

### Example

```cpp
#include <type_traits>
#include <iostream>

int main() {
    std::cout << "false_type == " << std::boolalpha
        << std::false_type::value << std::endl;
    std::cout << "true_type == " << std::boolalpha
        << std::true_type::value << std::endl;

    return (0);
}
```

```Output
false_type == false
true_type == true
```

## <a name="true_type"></a> true_type Typedef

Holds integral constant with true value.

```cpp
typedef integral_constant<bool, true> true_type;
```

### Remarks

The type is a synonym for a specialization of the template `integral_constant`.

### Example

```cpp
// std__type_traits__true_type.cpp
// compile with: /EHsc
#include <type_traits>
#include <iostream>

int main() {
    std::cout << "false_type == " << std::boolalpha
        << std::false_type::value << std::endl;
    std::cout << "true_type == " << std::boolalpha
        << std::true_type::value << std::endl;

    return (0);
}
```

```Output
false_type == false
true_type == true
```

## See also

[<type_traits>](../standard-library/type-traits.md)