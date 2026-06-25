# Compiler Warning (level 4) C4218

> nonstandard extension used: must specify at least a storage class or a type

## Remarks

With the default Microsoft extensions (`/Ze`), you can declare a variable without specifying a type or storage class. The default type is **`int`**.

## Example

The following example generates C4218:

```cpp
// C4218.c
// compile with: /W4
i;  // C4218

int main()
{
}
```

Such declarations are invalid under ANSI compatibility ([/Za](../../build/reference/za-ze-disable-language-extensions.md)).