# Compiler Error C3831

> 'member': 'class' cannot have a pinned data member or a member function returning a pinning pointer

## Remarks

[pin_ptr (C++/CLI)](../../extensions/pin-ptr-cpp-cli.md) was used incorrectly.

## Example

The following example generates C3831:

```cpp
// C3831a.cpp
// compile with: /clr
ref class Y
{
public:
   int i;
};

ref class X
{
   pin_ptr<int> mbr_Y;   // C3831
   int^ mbr_Y2;   // OK
};

int main() {
   Y y;
   pin_ptr<int> p = &y.i;
}
```