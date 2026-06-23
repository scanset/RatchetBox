# Compiler Error C3042

> 'copyprivate' and 'nowait' clauses cannot appear together on OpenMP 'directive' directive

## Remarks

The [copyprivate](../../parallel/openmp/reference/openmp-clauses.md#copyprivate) and [nowait](../../parallel/openmp/reference/openmp-clauses.md#nowait) clauses are mutually exclusive on the specified directive. To fix this error, remove one or both of the `copyprivate` or `nowait` clauses.

## Example

The following example generates C3042:

```cpp
// C3042.cpp
// compile with: /openmp /c
#include <stdio.h>
#include "omp.h"

double d;

int main() {
    #pragma omp parallel private(d)
   {
      #pragma omp single copyprivate(d) nowait   // C3042
      {
      }
   }
}
```