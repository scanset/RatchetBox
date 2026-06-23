# Fatal Error C1081

> 'symbol': file name too long

## Remarks

The length of a file pathname exceeds `_MAX_PATH` (defined by STDLIB.h as 260 characters). Shorten the name of the file.

If you call CL.exe with a short filename, the compiler may need to generate a full pathname. For example, `cl -c myfile.cpp` may cause the compiler to generate:

```
D:\<very-long-directory-path>\myfile.cpp
```