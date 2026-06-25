# invalid_operation Class

This class describes an exception thrown when an invalid operation is performed that is not more accurately described by another exception type thrown by the Concurrency Runtime.

## Syntax

```cpp
class invalid_operation : public std::exception;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[invalid_operation](#ctor)|Overloaded. Constructs an `invalid_operation` object.|

## Remarks

The various methods which throw this exception will generally document under what circumstances they will throw it.

## Inheritance Hierarchy

`exception`

`invalid_operation`

## Requirements

**Header:** concrt.h

**Namespace:** concurrency

## <a name="ctor"></a> invalid_operation

Constructs an `invalid_operation` object.

```cpp
explicit _CRTIMP invalid_operation(_In_z_ const char* _Message) throw();

invalid_operation() throw();
```

### Parameters

*_Message*<br/>
A descriptive message of the error.

## See also

[concurrency Namespace](concurrency-namespace.md)