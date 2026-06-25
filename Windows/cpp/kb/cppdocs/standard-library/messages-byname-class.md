# messages_byname Class

The derived class template describes an object that can serve as a message facet of a given locale, enabling the retrieval of localized messages.

## Syntax

```cpp
template <class CharType>
class messages_byname : public messages<CharType> {
public:
    explicit messages_byname(
    const char *_Locname,
    size_t _Refs = 0);

    explicit messages_byname(
    const string& _Locname,
    size_t _Refs = 0);

protected:
    virtual ~messages_byname();

};
```

### Parameters

*_Locname*\
A named locale.

*_Refs*\
An initial reference count.

## Remarks

Its behavior is determined by the named locale *_Locname*. Each constructor initializes its base object with [messages](../standard-library/messages-class.md#messages)\<CharType>(`_Refs`).

## Requirements

**Header:** \<locale>

**Namespace:** std

## See also

[Thread Safety in the C++ Standard Library](../standard-library/thread-safety-in-the-cpp-standard-library.md)