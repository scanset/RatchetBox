# Compiler Error C3009

> 'label' : jump into OpenMP structured block not allowed

## Remarks

Code cannot jump into or out of an OpenMP block.

## Example

The following example generates C3009:

```c
// C3009.c
// compile with: /openmp
int main() {
   #pragma omp parallel
   {
   lbl2:;
   }
   goto lbl2;   // C3009
}
```