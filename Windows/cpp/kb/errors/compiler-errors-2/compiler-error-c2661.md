# Compiler Error C2661

> 'function' : no overloaded function takes number parameters

## Remarks

Possible causes:

1. Incorrect actual parameters in function call.

1. Missing function declaration.

## Example

The following example generates C2661:

```cpp
// C2661.cpp
void func( int ){}
void func( int, int ){}
int main() {
   func( );   // C2661 func( void ) was not declared
   func( 1 );   // OK func( int ) was declared
}
```