# `_local_unwind2`

Internal CRT Function. Runs all termination handlers that are listed in the indicated scope table.

## Syntax

```cpp
void _local_unwind2(
   PEXCEPTION_REGISTRATION xr,
   int stop
);
```

#### Parameters

*`xr`*\
[in] A registration record that is associated with one scope table.

*`stop`*\
[in] The lexical level that indicates where `_local_unwind2` should stop.

## Remarks

This method is used only by the run-time environment. Don't call the method in your code.

When this method executes termination handlers, it starts at the current lexical level, and works upward in lexical levels until it reaches the level that's indicated by `stop`. It doesn't execute termination handlers at the level that's indicated by `stop`.

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)