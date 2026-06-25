iterator begin() noexcept;

(since C++11)

const_iterator begin() const noexcept;

(since C++11)

const_iterator cbegin() const noexcept;

(since C++11)

Returns an iterator to the beginning of the list of sub-matches. If match was successful, the iterator will point to the entire matched expression.

### Parameters

(none)

### Return value

Iterator to the first sub-match.

### Complexity

Constant.

### See also

endcend

returns iterator to the end of the list of sub-matches 
(public member function)