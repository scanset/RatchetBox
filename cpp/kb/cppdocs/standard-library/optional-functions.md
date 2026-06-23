# `<optional>` functions

## <a name="make_optional"></a> make_optional

Makes an object optional.

```cpp
template <class T>
    constexpr optional<see below> make_optional(T&&);
template <class T, class... Args>
    constexpr optional<T> make_optional(Args&&... args);
template <class T, class U, class... Args>
    constexpr optional<T> make_optional(initializer_list<U> il, Args&&... args);
```

## <a name="nullopt"></a> nullopt

```cpp
inline constexpr nullopt_t nullopt(unspecified );
```

## <a name="swap"></a> swap

```cpp
template <class T>
    void swap(optional<T>&, optional<T>&) noexcept(see below );
```