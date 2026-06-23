# Compiler Warning (level 1) C4353

> nonstandard extension used: constant 0 as function expression. Use '__noop' function intrinsic instead

## Remarks

You cannot use the constant zero (0) as a function expression. For more information, see [__noop](../../intrinsics/noop.md).

## Example

The following example generates C4353:

```cpp
// C4353.cpp
// compile with: /W1
void MyPrintf(void){}
#define X 0
#if X
   #define DBPRINT MyPrint
#else
   #define DBPRINT 0   // C4353 expected
#endif
int main(){
DBPRINT();
}
```