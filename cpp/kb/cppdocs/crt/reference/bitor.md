# `bitor`

An alternative to the `|` operator.

## Syntax

```C
#define bitor |
```

## Remarks

The macro yields the operator `|`.

## Example

```cpp
// iso646_bitor.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   int a = 1, b = 2, result;

   result = a | b;
   cout << result << endl;

   result= a bitor b;
   cout << result << endl;
}
```

```Output
3
3
```

## Requirements

**Header:** \<iso646.h>