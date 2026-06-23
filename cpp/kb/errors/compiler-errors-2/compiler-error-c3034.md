# Compiler Error C3034

> OpenMP 'directive1' directive cannot be directly nested within 'directive2' directive

## Remarks

Some directives cannot be nested. To fix this error, you can merge the statements of both directives into the block of one directive, or you can construct consecutive directives.

## Example

The following example generates C3034:

```cpp
// C3034.cpp
// compile with: /openmp /link vcomps.lib
int main() {

   #pragma omp single
   {
      #pragma omp single   // C3034
      {
      ;
      }
   }

   // Two consecutive single clauses are OK.
   #pragma omp single
   {
   }

   #pragma omp single
   {
   }
}
```