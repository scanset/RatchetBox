# scheduler_resource_allocation_error Class

This class describes an exception thrown because of a failure to acquire a critical resource in the Concurrency Runtime.

## Syntax

```cpp
class scheduler_resource_allocation_error : public std::exception;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[scheduler_resource_allocation_error](#ctor)|Overloaded. Constructs a `scheduler_resource_allocation_error` object.|

### Public Methods

|Name|Description|
|----------|-----------------|
|[get_error_code](#get_error_code)|Returns the error code that caused the exception.|

## Remarks

This exception is typically thrown when a call to the operating system from within the Concurrency Runtime fails. The error code which would normally be returned from a call to the Win32 method `GetLastError` is converted to a value of type `HRESULT` and can be retrieved using the `get_error_code` method.

## Inheritance Hierarchy

`exception`

`scheduler_resource_allocation_error`

## Requirements

**Header:** concrt.h

**Namespace:** concurrency

## <a name="get_error_code"></a> get_error_code

Returns the error code that caused the exception.

```cpp
HRESULT get_error_code() const throw();
```

### Return Value

The `HRESULT` value of the error that caused the exception.

## <a name="ctor"></a> scheduler_resource_allocation_error

Constructs a `scheduler_resource_allocation_error` object.

```cpp
scheduler_resource_allocation_error(
    _In_z_ const char* _Message,
    HRESULT _Hresult) throw();

explicit _CRTIMP scheduler_resource_allocation_error(
    HRESULT _Hresult) throw();
```

### Parameters

*_Message*<br/>
A descriptive message of the error.

*_Hresult*<br/>
The `HRESULT` value of the error that caused the exception.

## See also

[concurrency Namespace](concurrency-namespace.md)