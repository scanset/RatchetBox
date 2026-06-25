Defined in header <iterator>

template< class Iter1, class Iter2 >

typename reverse_iterator<Iter>::difference_type 

    operator-( const reverse_iterator<Iter1>& lhs,

const reverse_iterator<Iter2>& rhs );

(until C++11)

template< class Iter1, class Iter2 >

auto operator-( const reverse_iterator<Iter1>& lhs,

                const reverse_iterator<Iter2>& rhs )

-> decltype(rhs.base() - lhs.base());

(since C++11) 
(constexpr since C++17)

Returns the distance between two iterator adaptors.

### Parameters

lhs, rhs

-

iterator adaptors to compute the difference of

### Return value

rhs.base() - lhs.base()

### Notes

operator- returns rhs.base() - lhs.base() rather than lhs.base() - rhs.base() because this is a reverse iterator.

### Example

Run this code

#include <iostream>
#include <iterator>
#include <list>
#include <vector>
 
int main()
{
std::vector vec{0, 1, 2, 3};
std::reverse_iterator<std::vector<int>::iterator>
vec_ri1{std::reverse_iterator{vec.rbegin()}},
vec_ri2{std::reverse_iterator{vec.rend()}};
std::cout << (vec_ri2 - vec_ri1) << ' '; // 4
std::cout << (vec_ri1 - vec_ri2) << '\n'; // -4
 
std::list lst{5, 6, 7, 8};
std::reverse_iterator<std::list<int>::iterator>
lst_ri1{std::reverse_iterator{lst.rbegin()}},
lst_ri2{std::reverse_iterator{lst.rend()}};
// auto n = (lst_ri1 - lst_ri2); // Error: the underlying iterators do not
// model random access iterator
}

Output:

4 -4

### Defect reports

The following behavior-changing defect reports were applied retroactively to previously published C++ standards.

DR

Applied to

Behavior as published

Correct behavior

LWG 280

C++98

heterogeneous subtraction was not allowed

allowed

### See also

operator++operator++(int)operator+=operator+operator--operator--(int)operator-=operator-

advances or decrements the iterator 
(public member function)

operator+

advances the iterator 
(function template)