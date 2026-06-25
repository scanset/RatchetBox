class text_encoding::aliases_view

    : public ranges::view_interface<text_encoding::aliases_view>

(since C++26)

The nested class text_encoding::aliases_view is a view over aliases of the character encoding.

Let r denote an instance of aliases_view. For a non-empty range r:

- r.front() is the primary name of the registered character encoding,

- r contains the aliases of the registered character encoding such that the order of the aliases is unspecified,

- each element in r is a non-null and non-empty null-terminated byte string encoded in the literal character encoding and comprising only characters from the basic character set, and

- r does not contain duplicate values when compared with std::strcmp.

These are the following type properties of text_encoding::aliases_view:

- it models copyable, random_access_range, and borrowed_range.

- it is not required to satisfy common_range and default_initializable.

- both ranges::range_value_t<text_encoding​::​aliases_view> and ranges::range_reference_t<text_encoding::aliases_view> denote const char*.

- ranges::iterator_t<text_encoding::aliases_view> is a ConstexprIterator.

### Member functions

begin

returns an iterator of implementation-defined type to the beginning of the aliases view 
(public member function)

end

returns a sentinel of implementation-defined type of the aliases view 
(public member function)

#### Inherited from std::ranges::view_interface 

empty

returns whether the derived view is empty. Provided if it satisfies sized_range or forward_range. 
(public member function of std::ranges::view_interface<D>)

cbegin

(C++23)

returns a constant iterator to the beginning of the range. 
(public member function of std::ranges::view_interface<D>)

cend

(C++23)

returns a sentinel for the constant iterator of the range. 
(public member function of std::ranges::view_interface<D>)

operator bool

returns whether the derived view is not empty. Provided if ranges::empty is applicable to it. 
(public member function of std::ranges::view_interface<D>)

front

returns the first element in the derived view. Provided if it satisfies forward_range. 
(public member function of std::ranges::view_interface<D>)

operator[]

returns the nth element in the derived view. Provided if it satisfies random_access_range. 
(public member function of std::ranges::view_interface<D>)

## std::text_encoding::aliases_view::begin

constexpr /*implementation-defined*/ begin() const;

(since C++26)

Returns an iterator of implementation-defined type to the beginning of r.

## std::text_encoding::aliases_view::end

constexpr /*implementation-defined*/ end() const;

(since C++26)

Returns a sentinel of implementation-defined type of r.

### Example

This section is incomplete
Reason: no example

### See also

aliases

returns a view over aliases of the current character encoding 
(public member function)