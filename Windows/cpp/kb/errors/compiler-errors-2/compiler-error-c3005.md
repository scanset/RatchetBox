# Compiler Error C3005

> 'error_text' : unexpected token encountered on OpenMP 'directive' directive

## Remarks

An OpenMP directive was ill formed.

## Examples

The following example generates C3005:

```c
// C3005.c
// compile with: /openmp
int main()
{
   #pragma omp parallel + for   // C3005
}
```

C3005 can also occur if you put an open brace on the same line as the pragma.

```c
// C3005b.c
// compile with: /openmp
int main() {
   #pragma omp parallel {   // C3005 put open brace on next line
   lbl2:;
   }
   goto lbl2;
}
```