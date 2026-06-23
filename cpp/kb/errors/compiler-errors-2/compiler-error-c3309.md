# Compiler Error C3309

> 'macro_name': module name cannot be a macro or a keyword

## Remarks

The value that you pass to the name property of the module attribute cannot be a symbol for the preprocessor to expand; it must be a string literal.

## Example

The following example generates C3309:

```cpp
// C3309.cpp
#define NAME MyModule
[module(name="NAME")];   // C3309
// Try the following line instead
// [module(name="MyModule")];
[coclass]
class MyClass {
public:
   void MyFunc();
};

int main() {
}
```