# improper_scheduler_attach Class

This class describes an exception thrown when the `Attach` method is called on a `Scheduler` object which is already attached to the current context.

## Syntax

```cpp
class improper_scheduler_attach : public std::exception;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[improper_scheduler_attach](#ctor)|Overloaded. Constructs an `improper_scheduler_attach` object.|

## Inheritance Hierarchy

`exception`

`improper_scheduler_attach`

## Requirements

**Header:** concrt.h

**Namespace:** concurrency

## <a name="ctor"></a> improper_scheduler_attach

Constructs an `improper_scheduler_attach` object.

```cpp
explicit _CRTIMP improper_scheduler_attach(_In_z_ const char* _Message) throw();

improper_scheduler_attach() throw();
```

### Parameters

*_Message*<br/>
A descriptive message of the error.

## See also

[concurrency Namespace](concurrency-namespace.md)<br/>
[Scheduler Class](scheduler-class.md)