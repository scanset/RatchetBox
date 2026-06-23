# Compiler Error C2645

> no qualified name for pointer to member (found ':: *')

## Remarks

The declaration of a pointer to a member does not specify a class.

## Example

The following example generates C2645:

```cpp
// C2645.cpp
class A {};
int main() {
   int B::* bp;   // C2645 B not defined
   int A::* ap;   // OK
}
```