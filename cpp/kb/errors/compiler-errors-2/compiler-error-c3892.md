# Compiler Error C3892

> 'var' : you cannot assign to a variable that is const

## Remarks

A const variable cannot be changed after it is declared and initialized.

## Example

The following example generates C3892:

```cpp
// C3892.cpp
// compile with: /clr
ref struct Y1 {
   static const int staticConst = 9;
};

int main() {
   Y1::staticConst = 0;   // C3892
}
```