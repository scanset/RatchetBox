# Compiler Error C3031

> 'var' : variable in 'reduction' clause must have scalar arithmetic type

## Remarks

A variable of the wrong type was passed to a reduction clause.

## Example

The following example generates C3031:

```cpp
// C3031.cpp
// compile with: /openmp /link vcomps.lib
#include <stdio.h>
#include "omp.h"

typedef struct {
   int n;
} Incomplete;

extern Incomplete inc;
int i = 9;

int main() {
   #pragma omp parallel reduction(+: inc)   // C3031
      ;

   #pragma omp parallel reduction(+: i)     // OK
      ;
}
```