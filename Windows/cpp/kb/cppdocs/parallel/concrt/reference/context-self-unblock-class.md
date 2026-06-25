# context_self_unblock Class

This class describes an exception thrown when the `Unblock` method of a `Context` object is called from the same context. This would indicate an attempt by a given context to unblock itself.

## Syntax

```cpp
class context_self_unblock : public std::exception;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[context_self_unblock](#ctor)|Overloaded. Constructs a `context_self_unblock` object.|

## Inheritance Hierarchy

`exception`

`context_self_unblock`

## Requirements

**Header:** concrt.h

**Namespace:** concurrency

## <a name="ctor"></a> context_self_unblock

Constructs a `context_self_unblock` object.

```cpp
explicit _CRTIMP context_self_unblock(_In_z_ const char* _Message) throw();

context_self_unblock() throw();
```

### Parameters

*_Message*<br/>
A descriptive message of the error.

## See also

[concurrency Namespace](concurrency-namespace.md)