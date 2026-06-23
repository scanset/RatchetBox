# `and_eq`

An alternative to the &= operator.

## Syntax

```C
#define and_eq &=
```

## Remarks

The macro yields the operator &=.

## Example

```cpp
// iso646_and_eq.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   int a = 3, b = 2, result;

   result= a &= b;
   cout << result << endl;

   result= a and_eq b;
   cout << result << endl;
}
```

```Output
2
2
```

## Requirements

**Header:** \<iso646.h>