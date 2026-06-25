# Compiler Error C2703

> illegal `__leave` statement

## Remarks

A **`__leave`** statement must be inside a **`__try`** block.

## Example

The following example generates C2703:

```cpp
// C2703.cpp
int main() {
   __leave;   // C2703
   __try {
      // try the following line instead
      __leave;
   }
   __finally {}
}
```

## See also

[The `__leave` keyword](../../cpp/try-except-statement.md#__leave)\
[`try-except` statement](../../cpp/try-except-statement.md)\
[`try-finally` statement](../../cpp/try-finally-statement.md)