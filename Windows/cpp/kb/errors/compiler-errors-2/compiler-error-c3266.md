# Compiler Error C3266

> 'class' : a class-constructor must have a 'void' parameter list

## Remarks

Class-constructors in a class using /clr programming cannot take parameters.

## Example

The following example generates C3266:

```cpp
// C3266.cpp
// compile with: /clr

ref class X {
   static X(int i) { // C3266
   // try the following line instead
   // static X() {
   }
};

int main() {
}
```