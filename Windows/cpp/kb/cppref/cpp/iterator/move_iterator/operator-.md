Defined in header <iterator>

template< class Iter1, class Iter2 >

auto operator-( const move_iterator<Iter1>& lhs,

                const move_iterator<Iter2>& rhs )

-> decltype(lhs.base() - rhs.base());

(since C++11) 
(constexpr since C++17)

Returns the distance between two iterator adaptors.

### Parameters

lhs, rhs

-

iterator adaptors to compute the difference of

### Return value

lhs.base() - rhs.base()

### Example

This section is incomplete
Reason: no example

### See also

operator++operator++(int)operator+=operator+operator--operator--(int)operator-=operator-

(C++11)

advances or decrements the iterator 
(public member function)

operator+

(C++11)

advances the iterator 
(function template)