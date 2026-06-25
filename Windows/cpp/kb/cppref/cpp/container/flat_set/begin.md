iterator begin() noexcept;

(1)
(since C++23)

const_iterator begin() const noexcept;

(2)
(since C++23)

const_iterator cbegin() const noexcept;

(3)
(since C++23)

Returns an iterator to the first element of the flat_set.

If the flat_set is empty, the returned iterator will be equal to end().

### Parameters

(none)

### Return value

Iterator to the first element.

### Complexity

Constant.

### Notes

Because both iterator and const_iterator are constant iterators (and may in fact be the same type), it is not possible to mutate the elements of the container through an iterator returned by any of these member functions.

### Example

Run this code

#include <algorithm>
#include <flat_set>
#include <iostream>
 
int main()
{
std::flat_set<int> set{3, 1, 4, 1, 5, 9, 2, 6, 5};
std::for_each(set.cbegin(), set.cend(), [](int x)
{
std::cout << x << ' ';
});
std::cout << '\n';
}

Output:

1 2 3 4 5 6 9

### See also

endcend

returns an iterator to the end 
(public member function)

begincbegin

(C++11)(C++14)

returns an iterator to the beginning of a container or array 
(function template)