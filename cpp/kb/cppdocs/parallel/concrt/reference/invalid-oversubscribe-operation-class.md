# invalid_oversubscribe_operation Class

This class describes an exception thrown when the `Context::Oversubscribe` method is called with the `_BeginOversubscription` parameter set to **`false`** without a prior call to the `Context::Oversubscribe` method with the `_BeginOversubscription` parameter set to **`true`**.

## Syntax

```cpp
class invalid_oversubscribe_operation : public std::exception;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[invalid_oversubscribe_operation](#ctor)|Overloaded. Constructs an `invalid_oversubscribe_operation` object.|

## Inheritance Hierarchy

`exception`

`invalid_oversubscribe_operation`

## Requirements

**Header:** concrt.h

**Namespace:** concurrency

## <a name="ctor"></a> invalid_oversubscribe_operation

Constructs an `invalid_oversubscribe_operation` object.

```cpp
explicit _CRTIMP invalid_oversubscribe_operation(_In_z_ const char* _Message) throw();

invalid_oversubscribe_operation() throw();
```

### Parameters

*_Message*<br/>
A descriptive message of the error.

## See also

[concurrency Namespace](concurrency-namespace.md)