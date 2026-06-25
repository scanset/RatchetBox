# `__RTDynamicCast`

Runtime implementation of the [`dynamic_cast`](../cpp/dynamic-cast-operator.md) operator.

## Syntax

```cpp
PVOID __RTDynamicCast(
   PVOID inptr,
   LONG VfDelta,
   PVOID SrcType,
   PVOID TargetType,
   BOOL isReference
) throw(...)
```

#### Parameters

*`inptr`*\
Pointer to a polymorphic object.

*`VfDelta`*\
Offset of virtual function pointer in object.

*`SrcType`*\
Static type of object pointed to by the `inptr` parameter.

*`TargetType`*\
Intended result of cast.

*`isReference`*\
**`true`** if input is a reference; **`false`** if input is a pointer.

## Return value

Pointer to the appropriate subobject if successful; otherwise, `NULL`.

## Exceptions

`bad_cast()` if the input to `dynamic_cast<>` is a reference and the cast fails.

## Remarks

Converts `inptr` to an object of type `TargetType`. The type of `inptr` must be a pointer if `TargetType` is a pointer, or an l-value if `TargetType` is a reference. `TargetType` must be a pointer or a reference to a previously defined class type, or a pointer to void.

## Requirements

| Routine | Required header |
|---|---|
| **`__RTDynamicCast`** | `<rttidata.h>` |