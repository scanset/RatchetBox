constexpr const_reverse_iterator rend() const noexcept;

(library fundamentals TS)

constexpr const_reverse_iterator crend() const noexcept;

(library fundamentals TS)

Returns a reverse iterator to the character following the last character of the reversed view. It corresponds to the character preceding the first character of the non-reversed view. This character acts as a placeholder, attempting to access it results in undefined behavior.

### Parameters

(none)

### Return value

const_reverse_iterator to the character following the last character.

### Complexity

Constant

### See also

rbegincrbegin

returns a reverse iterator to the beginning 
(public member function)