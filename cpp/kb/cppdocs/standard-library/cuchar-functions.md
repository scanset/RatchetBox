# `<cuchar>` functions

## <a name="c16rtomb"></a> c16rtomb

```cpp
size_t c16rtomb(char* s, char16_t c16, mbstate_t* ps);
```

## <a name="c32rtomb"></a> c32rtomb

```cpp
size_t c32rtomb(char* s, char32_t c32, mbstate_t* ps);
```

## <a name="mbrtoc16"></a> mbrtoc16

```cpp
size_t mbrtoc16(char16_t* pc16, const char* s, size_t n, mbstate_t* ps);
```

## <a name="mbrtoc32"></a> mbrtoc32

```cpp
size_t mbrtoc32(char32_t* pc32, const char* s, size_t n, mbstate_t* ps);
```