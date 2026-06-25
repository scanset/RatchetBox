# Compiler Warning (level 1) C4829

> Possibly incorrect parameters to function main. Consider 'intmain(Platform::Array\<Platform::String^>^ argv)'

## Remarks

Certain functions, such as main, cannot take reference type parameters. While compilation will succeed, the resulting image will probably not run.

## Example

The following example generates C4829:

```cpp
// C4829.cpp
// compile by using: cl /EHsc /ZW /W4 /c C4829.cpp
int main(Platform::String ^ s) {}   // C4829
```