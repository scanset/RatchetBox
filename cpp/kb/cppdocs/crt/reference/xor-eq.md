# `xor_eq`

An alternative to the **`^=`** operator.

## Syntax

```C
#define xor_eq ^=
```

## Remarks

The macro yields the operator **`^=`**.

## Example

```cpp
// iso646_xor_eq.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   int a = 3, b = 2, result;

   result= a ^= b;
   cout << result << endl;

   a = 3;
   b = 2;

   result= a xor_eq b;
   cout << result << endl;
}
```

```Output
1
1
```

## Requirements

**Header:** \<iso646.h>