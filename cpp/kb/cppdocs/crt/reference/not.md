# `not`

An alternative to the **`!`** operator.

## Syntax

```C
#define not !
```

## Remarks

The macro yields the operator **`!`**.

## Example

```cpp
// iso646_not.cpp
// compile with: /EHsc
#include <iostream>
#include <iso646.h>

int main( )
{
   using namespace std;
   int a = 0;

   if (!a)
      cout << "a is zero" << endl;

   if (not(a))
      cout << "a is zero" << endl;
}
```

```Output
a is zero
a is zero
```

## Requirements

**Header:** \<iso646.h>