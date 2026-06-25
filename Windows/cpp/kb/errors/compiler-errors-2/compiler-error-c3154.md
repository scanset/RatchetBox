# Compiler Error C3154

> Expected ',' before ellipsis. Non-comma separated ellipsis not supported on parameter array functions.

## Remarks

A variable argument function was not declared correctly.

For more information, see [Variable Argument Lists (...) (C++/CLI)](../../extensions/variable-argument-lists-dot-dot-dot-cpp-cli.md).

## Example

The following example generates C3154.

```cpp
// C3154.cpp
// compile with: /clr
ref struct R {
   void Func(int ... array<int> ^);   // C3154
   void Func2(int i, ... array<int> ^){}   // OK
   void Func3(array<int> ^){}   // OK
   void Func4(... array<int> ^){}   // OK
};

int main() {
   R ^ r = gcnew R;
   r->Func4(1,2,3);
}
```