# allocator_traits Class

The class template describes an object that supplements an *allocator type*. An allocator type is any type that describes an allocator object that is used for managing allocated storage. Specifically, for any allocator type `Alloc`, you can use `allocator_traits<Alloc>` to determine all the information that is needed by an allocator-enabled container. For more information, see the default [allocator Class](allocator-class.md).

## Syntax

```cpp
template <class Alloc>
    class allocator_traits;
```

## Members

### Typedefs

|Name|Description|
|-|-|
|`allocator_type`|This type is a synonym for the template parameter `Alloc`.|
|`const_pointer`|This type is `Alloc::const_pointer`, if that type is well-formed; otherwise, this type is `pointer_traits<pointer>::rebind<const value_type>`.|
|`const_void_pointer`|This type is `Alloc::const_void_pointer`, if that type is well-formed; otherwise, this type is `pointer_traits<pointer>::rebind<const void>`.|
|`difference_type`|This type is `Alloc::difference_type`, if that type is well-formed; otherwise, this type is `pointer_traits<pointer>::difference_type`.|
|`pointer`|This type is `Alloc::pointer`, if that type is well-formed; otherwise, this type is `value_type *`.|
|`propagate_on_container_copy_assignment`|This type is `Alloc::propagate_on_container_copy_assignment`, if that type is well-formed; otherwise, this type is `false_type`.|
|`propagate_on_container_move_assignment`|This type is `Alloc::propagate_on_container_move_assignment`, if that type is well-formed; otherwise, this type is `false_type`. If the type holds true, an allocator-enabled container copies its stored allocator on a move assignment.|
|`propagate_on_container_swap`|This type is `Alloc::propagate_on_container_swap`, if that type is well-formed; otherwise, this type is `false_type`. If the type holds true, an allocator-enabled container swaps its stored allocator on a swap.|
|`size_type`|This type is `Alloc::size_type`, if that type is well-formed; otherwise, this type is `make_unsigned<difference_type>::type`.|
|`value_type`|This type is a synonym for `Alloc::value_type`.|
|`void_pointer`|This type is `Alloc::void_pointer`, if that type is well-formed; otherwise, this type is `pointer_traits<pointer>::rebind<void>`.|

### Static Methods

The following static methods call the corresponding method on a given allocator parameter.

|Name|Description|
|-|-|
|[allocate](#allocate)|Static method that allocates memory by using the given allocator parameter.|
|[construct](#construct)|Static method that uses a specified allocator to construct an object.|
|[deallocate](#deallocate)|Static method that uses a specified allocator to deallocate a specified number of objects.|
|[destroy](#destroy)|Static method that uses a specified allocator to call the destructor on an object without deallocating its memory.|
|[max_size](#max_size)|Static method that uses a specified allocator to determine the maximum number of objects that can be allocated.|
|[select_on_container_copy_construction](#select_on_container_copy_construction)|Static method that calls `select_on_container_copy_construction` on the specified allocator.|

### <a name="allocate"></a> allocate

Static method that allocates memory by using the given allocator parameter.

```cpp
static pointer allocate(Alloc& al, size_type count);

static pointer allocate(Alloc& al, size_type count,
    typename allocator_traits<void>::const_pointer* hint);
```

#### Parameters

*al*\
An allocator object.

*count*\
The number of elements to allocate.

*hint*\
A `const_pointer` that might assist the allocator object in satisfying the request for storage by locating the address of an allocated object prior to the request. A null pointer is treated as no hint.

#### Return Value

Each method returns a pointer to the allocated object.

The first static method returns `al.allocate(count)`.

The second method returns `al.allocate(count, hint)`, if that expression is well formed; otherwise it returns `al.allocate(count)`.

### <a name="construct"></a> construct

Static method that uses a specified allocator to construct an object.

```cpp
template <class Uty, class Types>
static void construct(Alloc& al, Uty* ptr, Types&&... args);
```

#### Parameters

*al*\
An allocator object.

*ptr*\
A pointer to the location where the object is to be constructed.

*args*\
A list of arguments that is passed to the object constructor.

#### Remarks

The static member function calls `al.construct(ptr, args...)`, if that expression is well formed; otherwise it evaluates `::new (static_cast<void *>(ptr)) Uty(std::forward<Types>(args)...)`.

### <a name="deallocate"></a> deallocate

Static method that uses a specified allocator to deallocate a specified number of objects.

```cpp
static void deallocate(Alloc al,
    pointer ptr,
    size_type count);
```

#### Parameters

*al*\
An allocator object.

*ptr*\
A pointer to the starting location of the objects to be deallocated.

*count*\
The number of objects to deallocate.

#### Remarks

This method calls `al.deallocate(ptr, count)`.

This method throws nothing.

### <a name="destroy"></a> destroy

Static method that uses a specified allocator to call the destructor on an object without deallocating its memory.

```cpp
template <class Uty>
    static void destroy(Alloc& al, Uty* ptr);
```

#### Parameters

*al*\
An allocator object.

*ptr*\
A pointer to the location of the object.

#### Remarks

This method calls `al.destroy(ptr)`, if that expression is well formed; otherwise it evaluates `ptr->~Uty()`.

### <a name="max_size"></a> max_size

Static method that uses a specified allocator to determine the maximum number of objects that can be allocated.

```cpp
static size_type max_size(const Alloc& al);
```

#### Parameters

*al*\
An allocator object.

#### Remarks

This method returns `al.max_size()`, if that expression is well formed; otherwise it returns `numeric_limits<size_type>::max()`.

### <a name="select_on_container_copy_construction"></a> select_on_container_copy_construction

Static method that calls `select_on_container_copy_construction` on the specified allocator.

```cpp
static Alloc select_on_container_copy_construction(const Alloc& al);
```

#### Parameters

*al*\
An allocator object.

#### Return Value

This method returns `al.select_on_container_copy_construction()`, if that type is well formed; otherwise it returns *al*.

#### Remarks

This method is used to specify an allocator when the associated container is copy-constructed.