# uses_allocator Structure

Specializations that always hold true.

## Syntax

```cpp
template <class Ty, class Alloc>
struct uses_allocator<promise<Ty>, Alloc> : true_type;
template <class Ty, class Alloc>
struct uses_allocator<packaged_task<Ty>, Alloc> : true_type;
```

## Requirements

**Header:** \<future>

**Namespace:** std

## Specializations

### <a name="tuple"></a> \<tuple>

```cpp
template <class... Types, class Alloc>
struct uses_allocator<tuple<Types...>, Alloc>;
```

## See also

[Header Files Reference](../standard-library/cpp-standard-library-header-files.md)\
[\<future>](../standard-library/future.md)