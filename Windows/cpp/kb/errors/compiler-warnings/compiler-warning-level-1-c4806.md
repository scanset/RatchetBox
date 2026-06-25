# Compiler Warning (level 1) C4806

> 'operation' : unsafe operation: no value of type 'type' promoted to type 'type' can equal the given constant

## Remarks

This message warns against code such as `b == 3`, where `b` has type **`bool`**. The promotion rules cause **`bool`** to be promoted to **`int`**. This is legal, but it can never be **`true`**.

## Example

The following example generates C4806:

```cpp
// C4806.cpp
// compile with: /W1
int main()
{
   bool b = true;
   // try..
   // int b = true;

   if (b == 3)   // C4806
   {
      b = false;
   }
}
```