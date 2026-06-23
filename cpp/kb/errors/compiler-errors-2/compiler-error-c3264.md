# Compiler Error C3264

> 'class' : a class-constructor cannot have a return type

## Remarks

Class constructors cannot have return types.

## Example

The following example generates C3264:

```cpp
// C3264_2.cpp
// compile with: /clr

ref class X {
   public:
      static int X()   { // C3264
      }

      /* use the code below to resolve the error
      static X() {
      }
      */
};
int main() {
}
```