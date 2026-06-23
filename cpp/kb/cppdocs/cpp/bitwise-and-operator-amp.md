# Bitwise AND operator: `&`

## Syntax

*`and-expression`*:\
&emsp; *`equality-expression`*\
&emsp; *`and-expression`* **`&`** *`equality-expression`*

## Remarks

The bitwise AND operator (**`&`**) compares each bit of the first operand to the corresponding bit of the second operand. If both bits are 1, the corresponding result bit is set to 1. Otherwise, the corresponding result bit is set to 0.

Both operands to the bitwise AND operator must have integral types. The usual arithmetic conversions covered in [Standard conversions](standard-conversions.md) are applied to the operands.

## Operator keyword for `&`

C++ specifies **`bitand`** as an alternative spelling for **`&`**. In C, the alternative spelling is provided as a macro in the \<iso646.h> header. In C++, the alternative spelling is a keyword; use of \<iso646.h> or the C++ equivalent \<ciso646> is deprecated. In Microsoft C++, the [`/permissive-`](../build/reference/permissive-standards-conformance.md) or [`/Za`](../build/reference/za-ze-disable-language-extensions.md) compiler option is required to enable the alternative spelling.

## Example

```cpp
// expre_Bitwise_AND_Operator.cpp
// compile with: /EHsc
// Demonstrate bitwise AND
#include <iostream>
using namespace std;
int main() {
   unsigned short a = 0xCCCC;      // pattern 1100 ...
   unsigned short b = 0xAAAA;      // pattern 1010 ...

   cout  << hex << ( a & b ) << endl;   // prints "8888", pattern 1000 ...
}
```

## See also

[C++ built-in operators, precedence, and associativity](cpp-built-in-operators-precedence-and-associativity.md)\
[C bitwise operators](../c-language/c-bitwise-operators.md)