# `bitand`

An alternative to the & operator.

## Syntax

```C
#define bitand &
```

## Remarks

The macro yields the operator

## Example

```cpp
// iso646_bitand.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   int a = 1, b = 2, result;

   result = a & b;
   cout << result << endl;

   result= a bitand b;
   cout << result << endl;
}
```

```Output
0
0
```

## Requirements

**Header:** \<iso646.h>