# improper_scheduler_reference Class

This class describes an exception thrown when the `Reference` method is called on a `Scheduler` object that is shutting down, from a context that is not part of that scheduler.

## Syntax

```cpp
class improper_scheduler_reference : public std::exception;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[improper_scheduler_reference](#ctor)|Overloaded. Constructs an `improper_scheduler_reference` object.|

## Inheritance Hierarchy

`exception`

`improper_scheduler_reference`

## Requirements

**Header:** concrt.h

**Namespace:** concurrency

## <a name="ctor"></a> improper_scheduler_reference

Constructs an `improper_scheduler_reference` object.

```cpp
explicit _CRTIMP improper_scheduler_reference(_In_z_ const char* _Message) throw();

improper_scheduler_reference() throw();
```

### Parameters

*_Message*<br/>
A descriptive message of the error.

## See also

[concurrency Namespace](concurrency-namespace.md)<br/>
[Scheduler Class](scheduler-class.md)