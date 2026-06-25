# Compiler Error C3748

> 'interface': managed interfaces may not fire events

## Remarks

The [__event](../../cpp/event.md) keyword cannot appear inside an interface.

## Example

The following example generates C3748:

```cpp
// C3748.cpp
__interface I {
// try the following line instead
// struct I {
   __event void f();   // C3748
};

int main() {
}
```