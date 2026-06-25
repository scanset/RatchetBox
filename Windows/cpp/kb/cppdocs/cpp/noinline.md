# noinline

**Microsoft Specific**

**`__declspec(noinline)`** tells the compiler to never inline a particular member function (function in a class).

It may be worthwhile to not inline a function if it is small and not critical to the performance of your code. That is, if the function is small and not likely to be called often, such as a function that handles an error condition.

Keep in mind that if a function is marked **`noinline`**, the calling function will be smaller and thus, itself a candidate for compiler inlining.

```cpp
class X {
   __declspec(noinline) int mbrfunc() {
      return 0;
   }   // will not inline
};
```

**END Microsoft Specific**

## See also

[__declspec](../cpp/declspec.md)<br/>
[Keywords](../cpp/keywords-cpp.md)<br/>
[inline, __inline, \__forceinline](inline-functions-cpp.md)