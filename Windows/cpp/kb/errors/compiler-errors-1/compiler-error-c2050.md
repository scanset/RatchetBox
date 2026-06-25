# Compiler Error C2050

> switch expression not integral

## Remarks

The **`switch`** expression evaluates to a noninteger value. To resolve the error, use only integral values in switch statements.

## Example

The following example generates C2050:

```cpp
// C2050.cpp
int main() {
   int a = 1;
   switch ("a") {   // C2050
      case 1:
         a = 0;
      default:
         a = 2;
   }
}
```

Possible resolution:

```cpp
// C2050b.cpp
int main() {
   int a = 1;
   switch (a) {
      case 1:
         a = 0;
      default:
         a = 2;
   }
}
```