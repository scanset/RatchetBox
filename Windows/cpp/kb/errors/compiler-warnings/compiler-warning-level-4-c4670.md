# Compiler Warning (level 4) C4670

> 'identifier' : this base class is inaccessible

## Remarks

The specified base class of an object to be thrown in a **`try`** block is not accessible. The object cannot be instantiated if it is thrown. Check that the base class is inherited with the correct access specifier.

## Example

The following example generates C4670:

```cpp
// C4670.cpp
// compile with: /EHsc /W4
class A
{
};

class B : /* public */ A
{
} b;   // inherits A with private access by default

int main()
{
    try
    {
       throw b;   // C4670
    }
    catch( B )
    {
    }
}
```