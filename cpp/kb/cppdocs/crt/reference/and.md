# `and`

An alternative to the && operator.

## Syntax

```C
#define and &&
```

## Remarks

The macro yields the operator &&.

## Example

```cpp
// iso646_and.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   bool a = true, b = false, result;

   boolalpha(cout);

   result= a && b;
   cout << result << endl;

   result= a and b;
   cout << result << endl;
}
```

```Output
false
false
```

## Requirements

**Header:** \<iso646.h>