Defined in header <iterator>

template< class Iter > 

move_iterator<Iter> operator+

    ( typename move_iterator<Iter>::difference_type n,

const move_iterator<Iter>& it );

(since C++11) 
(constexpr since C++17) 
(until C++20)

template< class Iter > 

constexpr move_iterator<Iter> operator+

( std::iter_difference_t<Iter> n, const move_iterator<Iter>& it );

(since C++20)

Returns the iterator it incremented by n.

This overload participates in overload resolution only if it.base() + n is well-formed and has type Iter.

(since C++20)

### Parameters

n

-

the number of positions to increment the iterator

it

-

the iterator adaptor to increment

### Return value

it + n

### Example

This section is incomplete
Reason: no example

### Defect reports

The following behavior-changing defect reports were applied retroactively to previously published C++ standards.

DR

Applied to

Behavior as published

Correct behavior

LWG 3293

C++20

the non-member operator+ was constrained to
require it + n is well-formed and has type Iter

changed to
it.base() + n

### See also

operator++operator++(int)operator+=operator+operator--operator--(int)operator-=operator-

(C++11)

advances or decrements the iterator 
(public member function)

operator-

(C++11)

computes the distance between two iterator adaptors 
(function template)