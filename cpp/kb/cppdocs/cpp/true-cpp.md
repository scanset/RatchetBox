# true (C++)

## Syntax

```
bool-identifier = true ;
bool-expression logical-operator true ;
```

## Remarks

This keyword is one of the two values for a variable of type [bool](../cpp/bool-cpp.md) or a conditional expression (a conditional expression is now a true boolean expression). If `i` is of type **`bool`**, then the statement `i = true;` assigns **`true`** to `i`.

## Example

```cpp
// bool_true.cpp
#include <stdio.h>
int main()
{
    bool bb = true;
    printf_s("%d\n", bb);
    bb = false;
    printf_s("%d\n", bb);
}
```

```Output
1
0
```

## See also

[Keywords](../cpp/keywords-cpp.md)