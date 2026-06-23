# `or`

An alternative to the **`||`** operator.

## Syntax

```C
#define or ||
```

## Remarks

The macro yields the operator **`||`**.

## Example

```cpp
// iso646_or.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   bool a = true, b = false, result;

   boolalpha(cout);

   result= a || b;
   cout << result << endl;

   result= a or b;
   cout << result << endl;
}
```

```Output
true
true
```

## Requirements

**Header:** \<iso646.h>