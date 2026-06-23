iterator begin() noexcept;

(1)
(since C++11)

const_iterator begin() const noexcept;

(2)
(since C++11)

const_iterator cbegin() const noexcept;

(3)
(since C++11)

Returns an iterator to the first element of the unordered_multiset.

If the unordered_multiset is empty, the returned iterator will be equal to end().

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

#include <iostream>
#include <iterator>
#include <string>
#include <unordered_set>
 
int main()
{
const std::unordered_multiset<std::string> words =
{
"some", "words", "to", "count",
"count", "these", "words"
};
 
for (auto it = words.begin(); it != words.end(); )
{
auto count = words.count(*it);
std::cout << *it << ":\t" << count << '\n';
std::advance(it, count); // all count elements have equivalent keys
}
}

Possible output:

some: 1
words: 2
to: 1
count: 2
these: 1

### See also

endcend

returns an iterator to the end 
(public member function)

begincbegin

(C++11)(C++14)

returns an iterator to the beginning of a container or array 
(function template)