# bad_array_new_length Class

The class describes an exception thrown to indicate that an allocation request did not succeed due to array size less than zero or greater than its limit.

## Syntax

```cpp
class bad_array_new_length : public bad_alloc {
    public: bad_array_new_length() noexcept;
    const char* what() const noexcept override;
};
```

## Remarks

The value returned by `what` is an implementation-defined C string. None of the member functions throw any exceptions.

## Requirements

**Header:** \<new>

## See also

[exception Class](../standard-library/exception-class.md)\
[Thread Safety in the C++ Standard Library](../standard-library/thread-safety-in-the-cpp-standard-library.md)