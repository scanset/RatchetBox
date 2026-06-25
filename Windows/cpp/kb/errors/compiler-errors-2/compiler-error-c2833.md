# Compiler Error C2833

> 'operator *operator-name*' is not a recognized operator or type

## Remarks

The word **`operator`** must be followed by an *operator-name* that you want to override or a type you want to convert.

For a list of the operators that you can define in a managed type, see [User-defined Operators](../../dotnet/user-defined-operators-cpp-cli.md).

## Example

The following example generates C2833:

```cpp
// C2833.cpp
// compile with: /c
class A {};

void operator ::* ();   // C2833
void operator :: ();   // OK
```