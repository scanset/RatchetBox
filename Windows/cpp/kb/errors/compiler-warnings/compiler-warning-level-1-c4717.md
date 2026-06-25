# Compiler Warning (level 1) C4717

> 'function' : recursive on all control paths, function will cause runtime stack overflow

## Remarks

Every path through a function contains a call to the function. Since there is no way to exit the function without first calling itself recursively, the function will never exit.

## Example

The following example generates C4717:

```cpp
// C4717.cpp
// compile with: /W1 /c
// C4717 expected
int func(int x) {
   if (x > 1)
      return func(x - 1); // recursive call
   else {
      int y = func(0) + 1; // recursive call
      return y;
   }
}

int main(){
   func(1);
}
```