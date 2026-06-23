# Compiler Error C2450

> switch expression of type 'type' is illegal

## Remarks

The **`switch`** expression evaluates to an invalid type. It must evaluate to an integer type or a class type with unambiguous conversion to an integer type. If it evaluates to a user-defined type, you must supply a conversion operator.

## Example

The following example generates C2450:

```cpp
// C2450.cpp
class X
{
public:
   int i;
} x;

class Y
{
public:
   int i;
   operator int() { return i; }   // conversion operator
} y;

int main()
{
   switch ( x )
   {   // C2450, x is not type int
       // try the following line instead
       // switch ( y ) {
       default:  ;
   }
}
```