# Compiler Warning (level 4) C4208

> nonstandard extension used : delete [exp] - exp evaluated but ignored

## Remarks

With Microsoft extensions (/Ze), you can delete an array using a value within brackets with the [delete operator](../../cpp/delete-operator-cpp.md). The value is ignored.

## Example

The following example generates C4208:

```cpp
// C4208.cpp
// compile with: /W4
int main()
{
   int * MyArray = new int[18];
   delete [18] MyArray;      // C4208
   MyArray = new int[18];
   delete [] MyArray;        // ok
}
```

Such values are invalid under ANSI compatibility ([/Za](../../build/reference/za-ze-disable-language-extensions.md)).