# jitintrinsic

Marks the function as significant to the 64-bit common language runtime. This is used on certain functions in Microsoft-provided libraries.

## Syntax

```
__declspec(jitintrinsic)
```

## Remarks

**`jitintrinsic`** adds a MODOPT (<xref:System.Runtime.CompilerServices.IsJitIntrinsic>) to a function signature.

Users are discouraged from using this **`__declspec`** modifier, as unexpected results can occur.

## See also

[__declspec](../cpp/declspec.md)<br/>
[Keywords](../cpp/keywords-cpp.md)