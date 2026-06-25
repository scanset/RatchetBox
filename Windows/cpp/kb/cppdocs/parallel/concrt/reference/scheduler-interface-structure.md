# scheduler_interface Structure

Scheduler Interface

## Syntax

```cpp
struct __declspec(novtable) scheduler_interface;
```

## Members

### Public Methods

|Name|Description|
|----------|-----------------|
|[scheduler_interface::schedule](#schedule)||

## Inheritance Hierarchy

`scheduler_interface`

## Requirements

**Header:** pplinterface.h

**Namespace:** concurrency

## <a name="schedule"></a> scheduler_interface::schedule Method

```cpp
virtual void schedule(
    TaskProc_t,
void*) = 0;
```

## See also

[concurrency Namespace](concurrency-namespace.md)