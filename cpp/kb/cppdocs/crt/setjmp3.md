# `_setjmp3`

Internal CRT function. A new implementation of the `setjmp` function.

## Syntax

```C
int _setjmp3(
   OUT jmp_buf env,
   int count,
   (optional parameters)
);
```

#### Parameters

*`env`*\
[out] Address of the buffer for storing state information.

*`count`*\
[in] The number of `DWORD`s of information stored in the `optional parameters`.

*`optional parameters`*\
[in] Extra data pushed down by the `setjmp` intrinsic. The first `DWORD` is a function pointer that is used to unwind extra data and return to a nonvolatile register state. The second `DWORD` is the try level to be restored. Any further data is saved in the generic data array in the `jmp_buf`.

## Return value

Always returns 0.

## Remarks

Don't use this function in a C++ program. It's an intrinsic function that doesn't support C++. For more information about how to use `setjmp`, see [Using setjmp/longjmp](../cpp/using-setjmp-longjmp.md).

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`setjmp`](./reference/setjmp.md)