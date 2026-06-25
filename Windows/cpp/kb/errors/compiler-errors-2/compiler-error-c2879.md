# Compiler Error C2879

> 'symbol' : only an existing namespace can be given an alternative name by a namespace alias definition

## Remarks

You cannot create a [namespace alias](../../cpp/namespaces-cpp.md#namespace_aliases) to a symbol other than a namespace.

## Example

The following example generates C2879:

```cpp
// C2879.cpp
int main() {
   int i;
   namespace A = i;   // C2879 i is not a namespace
}
```