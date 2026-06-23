# sync_none Class

Describes a [synchronization filter](../standard-library/allocators-header.md) that provides no synchronization.

## Syntax

```cpp
template <class Cache>
class sync_none
```

### Parameters

`Cache`\
The type of cache associated with the synchronization filter. It can be [`cache_chunklist`](../standard-library/cache-chunklist-class.md), [`cache_freelist`](../standard-library/cache-freelist-class.md), or [`cache_suballoc`](../standard-library/cache-suballoc-class.md).

### Member functions

|Member function|Description|
|-|-|
|[allocate](#allocate)|Allocates a block of memory.|
|[deallocate](#deallocate)|Frees a specified number of objects from storage beginning at a specified position.|
|[equals](#equals)|Compares two caches for equality.|

## Requirements

**Header:** \<allocators>

**Namespace:** stdext

## <a name="allocate"></a> sync_none::allocate

Allocates a block of memory.

```cpp
void *allocate(std::size_t count);
```

### Parameters

*count*\
The number of elements in the array to be allocated.

### Remarks

The member function returns `cache.allocate(count)`, where `cache` is the cache object.

## <a name="deallocate"></a> sync_none::deallocate

Frees a specified number of objects from storage beginning at a specified position.

```cpp
void deallocate(void* ptr, std::size_t count);
```

### Parameters

*ptr*\
A pointer to the first object to be deallocated from storage.

*count*\
The number of objects to be deallocated from storage.

### Remarks

The member function calls `cache.deallocate(ptr, count)`, where `cache` represents the cache object.

## <a name="equals"></a> sync_none::equals

Compares two caches for equality.

```cpp
bool equals(const sync<Cache>& Other) const;
```

### Parameters

*Cache*\
The cache object of the synchronization filter.

*Other*\
The cache object to compare for equality.

### Return Value

The member function always returns **`true`**.

## See also

[\<allocators>](../standard-library/allocators-header.md)