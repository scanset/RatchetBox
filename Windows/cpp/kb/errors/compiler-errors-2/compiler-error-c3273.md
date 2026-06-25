# Compiler Error C3273

> __finally cannot be used on an exception block in unmanaged code.

## Example

The following example generates C3273:

```cpp
// C3273.cpp
// compile with: /GX
int main()
{
   try
   {
   }
   catch (int)
   {
   }
   __finally   // C3273, remove __finally clause
   {
   }
}
```