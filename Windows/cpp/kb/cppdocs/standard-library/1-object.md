# `_1` Object

Placeholders for replaceable arguments.

## Syntax

```cpp
namespace placeholders {
    extern unspecified _1, _2, ... _N
} // namespace placeholders (within std)
```

## Remarks

The objects `_1, _2, ... _N` are placeholders that represent the first, second, ..., through Nth argument, respectively in a function call to an object returned by [`bind`](functional-functions.md#bind). For example, you use `_6` to specify where the sixth argument should be inserted when the `bind` expression is evaluated.

In the Microsoft implementation, the value of `_N` is 20.

## Example

```cpp
// std__functional_placeholder.cpp
// compile with: /EHsc
#include <functional>
#include <algorithm>
#include <iostream>

using namespace std::placeholders;

void square(double x)
    {
    std::cout << x << "^2 == " << x * x << std::endl;
    }

void product(double x, double y)
    {
    std::cout << x << "*" << y << " == " << x * y << std::endl;
    }

int main()
    {
    double arg[] = {1, 2, 3};

    std::for_each(&arg[0], &arg[3], square);
    std::cout << std::endl;

    std::for_each(&arg[0], &arg[3], std::bind(product, _1, 2));
    std::cout << std::endl;

    std::for_each(&arg[0], &arg[3], std::bind(square, _1));

    return (0);
    }
```

```Output
1^2 == 1
2^2 == 4
3^2 == 9

1*2 == 2
2*2 == 4
3*2 == 6

1^2 == 1
2^2 == 4
3^2 == 9
```