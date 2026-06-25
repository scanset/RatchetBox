# `or_eq`

An alternative to the `|=` operator.

## Syntax

```C
#define or_eq |=
```

## Remarks

The macro yields the operator `|=`.

## Example

```cpp
// iso646_oreq.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   int a = 3, b = 2, result;

   result= a |= b;
   cout << result << endl;

   result= a or_eq b;
   cout << result << endl;
}
```

```Output
3
3
```

## Requirements

**Header:** \<iso646.h>