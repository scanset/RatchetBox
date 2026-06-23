# `compl`

An alternative to the ~ operator.

## Syntax

```C
#define compl ~
```

## Remarks

The macro yields the operator ~.

## Example

```cpp
// iso646_compl.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   int a = 1, result;

   result = ~a;
   cout << result << endl;

   result= compl(a);
   cout << result << endl;
}
```

```Output
-2
-2
```

## Requirements

**Header:** \<iso646.h>