# forward_iterator_tag Struct

A class that provides a return type for **iterator_category** function that represents a forward iterator.

## Syntax

```cpp
struct forward_iterator_tag    : public input_iterator_tag {};
```

## Remarks

The category tag classes are used as compile tags for algorithm selection. The template function needs to find out what is the most specific category of its iterator argument so that it can use the most efficient algorithm at compile time. For every iterator of type `Iterator`, `iterator_traits`< `Iterator`> **::iterator_category** must be defined to be the most specific category tag that describes the iterator's behavior.

The type is the same as **iterator**\< **Iter**> **::iterator_category** when **Iter** describes an object that can serve as a forward iterator.

## Example

See [iterator_traits](../standard-library/iterator-traits-struct.md) or [random_access_iterator_tag](../standard-library/random-access-iterator-tag-struct.md) for an example of how to use the **iterator_tag**s.

## Requirements

**Header:** \<iterator>

**Namespace:** std

## See also

[input_iterator_tag Struct](../standard-library/input-iterator-tag-struct.md)\
[Thread Safety in the C++ Standard Library](../standard-library/thread-safety-in-the-cpp-standard-library.md)\
[C++ Standard Library Reference](../standard-library/cpp-standard-library-reference.md)