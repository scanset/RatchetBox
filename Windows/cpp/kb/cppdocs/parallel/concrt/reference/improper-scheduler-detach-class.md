# improper_scheduler_detach Class

This class describes an exception thrown when the `CurrentScheduler::Detach` method is called on a context which has not been attached to any scheduler using the `Attach` method of a `Scheduler` object.

## Syntax

```cpp
class improper_scheduler_detach : public std::exception;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[improper_scheduler_detach](#ctor)|Overloaded. Constructs an `improper_scheduler_detach` object.|

## Inheritance Hierarchy

`exception`

`improper_scheduler_detach`

## Requirements

**Header:** concrt.h

**Namespace:** concurrency

## <a name="ctor"></a> improper_scheduler_detach

Constructs an `improper_scheduler_detach` object.

```cpp
explicit _CRTIMP improper_scheduler_detach(_In_z_ const char* _Message) throw();

improper_scheduler_detach() throw();
```

### Parameters

*_Message*<br/>
A descriptive message of the error.

## See also

[concurrency Namespace](concurrency-namespace.md)<br/>
[Scheduler Class](scheduler-class.md)