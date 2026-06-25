# Compiler Error C3006

> 'clause' : clause on OpenMP 'directive' directive is missing an expected argument

## Remarks

An OpenMP directive did not have an expected argument.

## Example

The following example generates C3006:

```c
// C3006.c
// compile with: /openmp
int main()
{
   #pragma omp parallel shared   // C3006
   // Try the following line instead:
   // #pragma omp parallel shared(x) {}

}
```