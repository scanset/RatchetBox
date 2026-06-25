# Compiler Error C3049

> 'arg' : invalid argument in OpenMP 'default' clause

## Remarks

An incorrect value was passed to a [default](../../parallel/openmp/reference/openmp-clauses.md#default-openmp) clause.

## Example

The following example generates C3049:

```cpp
// C3049.cpp
// compile with: /openmp /c
int main() {
   int n1 = 1;

   #pragma omp parallel default(private)   // C3049
   // try the following line instead
   // #pragma omp parallel default(shared)
   {
      ++n1;
   }
}
```