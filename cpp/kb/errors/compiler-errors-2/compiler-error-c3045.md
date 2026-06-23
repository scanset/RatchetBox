# Compiler Error C3045

> Expected a compound statement following OpenMP 'sections' directive. Missing '{'

## Remarks

A code block delimited by braces must follow a [sections](../../parallel/openmp/reference/openmp-directives.md#sections-openmp) directive.

## Example

The following example generates C3045:

```cpp
// C3045.cpp
// compile with: /openmp /c
#include "omp.h"

int main() {
   int n2 = 2, n3 = 3;

   #pragma omp parallel
   {
      ++n2;

      #pragma omp sections
         ++n2;   // C3045

      #pragma omp sections   // OK
      {
         ++n3;
      }
   }
}
```