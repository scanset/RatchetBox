# Compiler Error C3044

> 'section' : only allowed directly nested under an OpenMP 'sections' directive

## Remarks

The compiler found a `section` directive was used incorrectly. For more information, see [sections](../../parallel/openmp/reference/openmp-directives.md#sections-openmp).

## Example

The following example generates C3044:

```cpp
// C3044.cpp
// compile with: /openmp /c
#include "omp.h"
int main() {
   int n2 = 2, n3 = 3;

   #pragma omp parallel
   {
      ++n2;

      #pragma omp sections
      {
         ++n2;
      }

      #pragma omp section   // C3044
      {
         ++n3;
      }
   }

   #pragma omp parallel
   {
      ++n2;

      #pragma omp sections
      {
         #pragma omp section   // OK
         {
            ++n3;
         }
      }
   }
}
```