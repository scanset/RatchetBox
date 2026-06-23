# Compiler Error C2148

> total size of array must not exceed 0x7fffffff bytes

## Remarks

An array exceeds the limit. Reduce the size of the array.

## Example

The following example generates C2148:

```cpp
// C2148.cpp
#include <stdio.h>
#include <stdlib.h>

int main( ) {
   char MyArray[0x7ffffffff];   // C2148
   char * MyArray2 = (char *)malloc(0x7fffffff);

   if (MyArray2)
      printf_s("It worked!");
   else
      printf_s("It didn't work.");
}
```