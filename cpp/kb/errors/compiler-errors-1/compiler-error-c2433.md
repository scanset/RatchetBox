# Compiler Error C2433

> '*identifier*': '*modifier*' not permitted on data declarations

## Remarks

The **`friend`**, **`virtual`**, and **`inline`** modifiers cannot be used for data declarations.

## Example

The following example generates C2433:

```cpp
// C2433.cpp
int main()
{
    virtual int i;   // C2433
}
```