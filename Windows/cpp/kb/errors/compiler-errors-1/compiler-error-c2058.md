# Compiler Error C2058

> constant expression is not integral

## Remarks

The context requires an integer constant expression.

## Example

The following example generates C2058:

```cpp
// C2058.cpp
struct alignas(1.5) S {};   // C2058

int main() {
   int arr[1.5];   // C2058
}
```

To resolve the issue, use an integer constant expression. For example, `int arr[2];`