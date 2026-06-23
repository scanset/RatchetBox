# Compiler Error C3007

> 'arg' : clause on OpenMP 'directive' directive does not take an argument

## Remarks

An OpenMP directive had an argument, but the directive does not take an argument.

## Example

The following example generates C3007:

```c
// C3007.c
// compile with: /openmp
int main()
{
   #pragma omp parallel for ordered(2)   // C3007
}
```