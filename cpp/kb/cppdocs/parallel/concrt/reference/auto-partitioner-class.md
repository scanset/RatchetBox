# auto_partitioner Class

The `auto_partitioner` class represents the default method `parallel_for`, `parallel_for_each` and `parallel_transform` use to partition the range they iterates over. This method of partitioning employs range stealing for load balancing as well as per-iterate cancellation.

## Syntax

```cpp
class auto_partitioner;
```

## Members

### Public Constructors

|Name|Description|
|----------|-----------------|
|[auto_partitioner](#ctor)|Constructs a `auto_partitioner` object.|
|[~auto_partitioner Destructor](#dtor)|Destroys a `auto_partitioner` object.|

## Inheritance Hierarchy

`auto_partitioner`

## Requirements

**Header:** ppl.h

**Namespace:** concurrency

## <a name="dtor"></a> ~auto_partitioner

Destroys a `auto_partitioner` object.

```cpp
~auto_partitioner();
```

## <a name="ctor"></a> auto_partitioner

Constructs a `auto_partitioner` object.

```cpp
auto_partitioner();
```

## See also

[concurrency Namespace](concurrency-namespace.md)