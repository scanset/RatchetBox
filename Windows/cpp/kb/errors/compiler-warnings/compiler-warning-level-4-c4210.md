# Compiler Warning (level 4) C4210

> nonstandard extension used : function given file scope

## Remarks

With the default Microsoft extensions ([/Ze](../../build/reference/za-ze-disable-language-extensions.md)), function declarations have file scope.

## Example

The following example generates C4210:

```c
// C4210.c
// compile with: /W4 /c
void func1()
{
   extern int func2( double );   // C4210 expected
}

int main()
{
   func2( 4 );   //  /Ze passes 4 as type double
}                //  /Za passes 4 as type int
```

This extension can prevent your code from being portable to other compilers.