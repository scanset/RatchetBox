# Compiler Error C3032

> 'var' : variable in 'clause' clause cannot have incomplete type 'type'

## Remarks

Types passed to certain clauses must be fully visible to the compiler.

## Example

The following example generates C3032:

```cpp
// C3032.cpp
// compile with: /openmp /link vcomps.lib
#include "omp.h"

struct Incomplete;
extern struct Incomplete inc;

int main() {
   int i = 9;
   #pragma omp parallel private(inc)   // C3032
      ;

   #pragma omp parallel private(i)     // OK
      ;

}
```