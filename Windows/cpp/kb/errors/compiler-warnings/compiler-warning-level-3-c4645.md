# Compiler Warning (level 3) C4645

> function declared with __declspec(noreturn) has a return statement

## Remarks

A [return](../../cpp/program-termination.md) statement was found in a function that is marked with the [noreturn](../../cpp/noreturn.md) **`__declspec`** modifier. The **`return`** statement was ignored.

## Example

The following example generates C4645:

```cpp
// C4645.cpp
// compile with:  /W3
void __declspec(noreturn) func() {
   return;   // C4645, delete this line to resolve
}

int main() {
}
```