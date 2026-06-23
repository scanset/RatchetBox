# Compiler Error C3834

> illegal explicit cast to a pinning pointer; use a pinned local variable instead

## Remarks

Explicit casts to a pinned pointer are not allowed.

## Example

The following example generates C3834.

```cpp
// C3834.cpp
// compile with: /clr
int main() {
   int x = 33;

   pin_ptr<int> p = safe_cast<pin_ptr<int> >(&x);   // C3834
   pin_ptr<int> p2 = &x;   // OK
}
```