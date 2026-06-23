# Compiler Error C2540

> non-constant expression as array bound

## Remarks

An array must have a constant bound.

## Example

The following example generates C2540:

```cpp
// C2540.cpp
void func(int n, int pC[]) {
   int i = ((int [n])pC)[1];   // C2540
}

void func2(int n, int pC[]) {
   int i = (pC)[1];   // OK
}

int main() {
   int pC[100];
   func(100, pC);
   func2(100, pC);
}
```