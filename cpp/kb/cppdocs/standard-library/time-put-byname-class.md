# time_put_byname Class

The derived class template describes an object that can serve as a locale facet of type `time_put`\< CharType, OutputIterator >.

## Syntax

```cpp
template <class CharType, class OutIt = ostreambuf_iterator<CharType, char_traits<CharType>>>
class time_put_byname : public time_put<CharType, OutputIterator>
{
public:
    explicit time_put_byname(
    const char* _Locname,
    size_t _Refs = 0);

    explicit time_put_byname(
    const string& _Locname,
    size_t _Refs = 0);

protected:
    virtual ~time_put_byname();

};
```

### Parameters

*_Locname*\
A locale name.

*_Refs*\
An initial reference count.

## Remarks

Its behavior is determined by the [named](../standard-library/locale-class.md#name) locale *_Locname*. Each constructor initializes its base object with [time_put](../standard-library/time-put-class.md#time_put)\<CharType, OutputIterator>(`_Refs`).

## Requirements

**Header:** \<locale>

**Namespace:** std

## See also

[Thread Safety in the C++ Standard Library](../standard-library/thread-safety-in-the-cpp-standard-library.md)