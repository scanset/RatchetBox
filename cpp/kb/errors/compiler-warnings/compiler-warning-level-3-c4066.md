# Compiler Warning (level 3) C4066

> characters beyond first in wide-character constant ignored

## Remarks

The compiler processes only the first character of a wide-character constant.

## Example

The following example generates C4066:

```cpp
// C4066.cpp
// compile with: /W3
#include <iostream>

int main()
{
    wchar_t wc = L'AB';   // C4066

    std::wcout << wc;
}
```

```output
A
```