# Compiler Error C3484

> expected '->' before the return type

## Remarks

You must provide `->` before the return type of a lambda expression.

### To correct this error

- Provide `->` before the return type.

## Example

The following example generates C3484:

```cpp
// C3484a.cpp

int main()
{
   return []() . int { return 42; }(); // C3484
}
```

The following example resolves C3484 by providing `->` before the return type of the lambda expression:

```cpp
// C3484b.cpp

int main()
{
   return []() -> int { return 42; }();
}
```

## See also

[Lambda Expressions](../../cpp/lambda-expressions-in-cpp.md)