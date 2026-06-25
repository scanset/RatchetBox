# `<memory_resource>` functions

## <a name="get_default"></a> get_default_resource

```cpp
memory_resource* get_default_resource() noexcept;
```

## <a name="new_delete"></a> new_delete_resource

```cpp
memory_resource* new_delete_resource() noexcept;
```

## <a name="null_memory"></a> null_memory_resource

```cpp
memory_resource* null_memory_resource() noexcept;
```

## <a name="poly_alloc"></a> polymorphic_allocator

```cpp
template <class Tp>
class polymorphic_allocator {
    memory_resource* memory_rsrc; // exposition only

    public:
    using value_type = Tp;

    polymorphic_allocator() noexcept;
    polymorphic_allocator(memory_resource* r);
    polymorphic_allocator(const polymorphic_allocator& other) = default;
    template <class U>
        polymorphic_allocator(const polymorphic_allocator<U>& other) noexcept;
    polymorphic_allocator&
        operator=(const polymorphic_allocator& rhs) = delete;

    Tp* allocate(size_t n);
    void deallocate(Tp* p, size_t n);
    template <class T, class... Args>
        void construct(T* p, Args&&... args);
    template <class T1, class T2, class... Args1, class... Args2>
        void construct(pair<T1,T2>* p, piecewise_construct_t,
    tuple<Args1...> x, tuple<Args2...> y);
    template <class T1, class T2>
        void construct(pair<T1,T2>* p);
    template <class T1, class T2, class U, class V>
        void construct(pair<T1,T2>* p, U&& x, V&& y);
    template <class T1, class T2, class U, class V>
        void construct(pair<T1,T2>* p, const pair<U, V>& pr);
    template <class T1, class T2, class U, class V>
        void construct(pair<T1,T2>* p, pair<U, V>&& pr);
    template <class T>
        void destroy(T* p);
    polymorphic_allocator select_on_container_copy_construction() const;
    memory_resource* resource() const;
};
```

## <a name="set_default"></a> set_default_resource

```cpp
memory_resource* set_default_resource(memory_resource* r) noexcept;
```