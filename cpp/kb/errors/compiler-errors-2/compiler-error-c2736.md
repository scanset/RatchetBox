# Compiler Error C2736

> 'keyword' keyword is not permitted in cast

## Remarks

The keyword is invalid in a cast.

## Example

The following example generates C2736:

```cpp
// C2736.cpp
int main() {
   return (virtual) 0;   // C2736
   // try the following line instead
   // return 0;
}
```