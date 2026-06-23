# Compiler Error C2130

> #line expected a string containing the filename, found 'token'

## Remarks

The optional file name token following [#line](../../preprocessor/hash-line-directive-c-cpp.md) `linenumber` must be a string.

## Example

The following example generates C2130:

```cpp
// C2130.cpp
int main() {
   #line 1000 test   // C2130
   #line 1000 "test"   // OK
}
```