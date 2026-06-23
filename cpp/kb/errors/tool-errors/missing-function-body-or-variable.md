# Missing Function Body or Variable

With just a function prototype, the compiler can continue without error, but the linker cannot resolve a call to an address because there is no function code or variable space reserved. You will not see this error until you create a call to the function that the linker must resolve.

## Example: Call to an undefined function

The function call in main will cause LNK2019 because the prototype allows the compiler to think the function exists.  The linker finds that it doesn't.

```cpp
// LNK2019_MFBV.cpp
// LNK2019 expected
void DoSomething(void);
int main() {
   DoSomething();
}
```

## Example: Call to an implemented function

In C++, make sure that you include the implementation of a specific function for a class and not just a prototype in the class definition. If you are defining the class outside of the header file, be sure to include the class name before the function (`Classname::memberfunction`).

```cpp
// LNK2019_MFBV_2.cpp
// LNK2019 expected
struct A {
   static void Test();
};

// Should be void A::Test() {}
void Test() {}

int main() {
   A AObject;
   AObject.Test();
}
```

## See also

[Linker Tools Error LNK2019](../../error-messages/tool-errors/linker-tools-error-lnk2019.md)