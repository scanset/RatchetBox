# Compiler Error C3059

> 'var' : 'threadprivate' symbol cannot be used in the 'clause' clause

## Remarks

A [threadprivate](../../parallel/openmp/reference/openmp-directives.md#threadprivate) symbol was used in a clause.

## Example

The following example generates C3059:

```cpp
// C3059.cpp
// compile with: /openmp
#include "omp.h"
int x, y;
#pragma omp threadprivate(x, y)

int main() {
   #pragma omp parallel private(x, y)   // C3059
   {
      x = y;
   }
}
```

Possible resolution:

```cpp
// C3059b.cpp
// compile with: /openmp
#include "omp.h"
int x = 0, y = 0;

int main() {
   #pragma omp parallel firstprivate(y) private(x)
   {
      x = y;
   }
}
```