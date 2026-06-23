# Compiler Error C2046

> illegal case

## Remarks

The keyword `case` can appear only in a **`switch`** statement.

## Example

The following example generates C2046:

```cpp
// C2046.cpp
int main() {
   case 0:   // C2046
}
```

Possible resolution:

```cpp
// C2046b.cpp
int main() {
   int i = 0;

   switch(i) {
      case 0:
      break;

      default:
      break;
   }
}
```