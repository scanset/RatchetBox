# Compiler Error C3001

> 'error_text' : expected an OpenMP directive name

## Remarks

The `omp` pragma must be followed by a directive.

## Example

The following example generates C3001:

```c
// C3001.c
// compile with: /openmp
int main()
{
   #pragma omp   // C3001 missing token
}
```