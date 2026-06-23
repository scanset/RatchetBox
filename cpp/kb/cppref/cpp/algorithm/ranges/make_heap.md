Defined in header <algorithm>

Call signature

template< std::random_access_iterator I, std::sentinel_for<I> S,

          class Comp = ranges::less, class Proj = std::identity >

    requires std::sortable<I, Comp, Proj>

constexpr I make_heap( I first, S last, Comp comp = {}, Proj proj = {} );

(1)
(since C++20)

template< ranges::random_access_range R,

          class Comp = ranges::less, class Proj = std::identity >

    requires std::sortable<ranges::iterator_t<R>, Comp, Proj>

constexpr ranges::borrowed_iterator_t<R>

make_heap( R&& r, Comp comp = {}, Proj proj = {} );

(2)
(since C++20)

Constructs a heap with respect to comp and proj from the elements in the specified range.

1) The specified range is [first, last).

2) The specified range is r.

The function-like entities described on this page are algorithm function objects (informally known as niebloids), that is:

- Explicit template argument lists cannot be specified when calling any of them.

- None of them are visible to argument-dependent lookup.

- When any of them are found by normal unqualified lookup as the name to the left of the function-call operator, argument-dependent lookup is inhibited.

### Parameters

first, last

-

the iterator and sentinel designating the range of elements to modify

r

-

the range of elements to modify

comp

-

comparator to apply to the projected elements

proj

-

projection to apply to the elements

### Return value

1) last

2) ranges::end(r)

### Complexity

At most \(\scriptsize 3\cdot N\)3·N applications of comp and \(\scriptsize 6\cdot N\)6·N applications of proj, where \(\scriptsize N \)N is:

1) ranges::distance(first, last)

2) ranges::distance(r)

### Example

Run this code

#include <algorithm>
#include <cmath>
#include <functional>
#include <iostream>
#include <vector>
 
void out(const auto& what, int n = 1)
{
while (n-- > 0)
std::cout << what;
}
 
void print(auto rem, const auto& v)
{
out(rem);
for (auto e : v)
out(e), out(' ');
out('\n');
}
 
void draw_heap(const auto& v)
{
auto bails = [](int n, int w)
{
auto b = [](int w) { out("┌"), out("─", w), out("┴"), out("─", w), out("┐"); };
if (!(n /= 2))
return;
for (out(' ', w); n-- > 0;)
b(w), out(' ', w + w + 1);
out('\n');
};
 
auto data = [](int n, int w, auto& first, auto last)
{
for (out(' ', w); n-- > 0 && first != last; ++first)
out(*first), out(' ', w + w + 1);
out('\n');
};
 
auto tier = [&](int t, int m, auto& first, auto last)
{
const int n{1 << t};
const int w{(1 << (m - t - 1)) - 1};
bails(n, w), data(n, w, first, last);
};
 
const int m{static_cast<int>(std::ceil(std::log2(1 + v.size())))};
auto first{v.cbegin()};
for (int i{}; i != m; ++i)
tier(i, m, first, v.cend());
}
 
int main()
{
std::vector h{1, 6, 1, 8, 0, 3, 3, 9, 8, 8, 7, 4, 9, 8, 9};
print("source: ", h);
 
std::ranges::make_heap(h);
print("\n" "max-heap: ", h);
draw_heap(h);
 
std::ranges::make_heap(h, std::greater{});
print("\n" "min-heap: ", h);
draw_heap(h);
}

Output:

source: 1 6 1 8 0 3 3 9 8 8 7 4 9 8 9
 
max-heap: 9 8 9 8 8 4 9 6 1 0 7 1 3 8 3
9
┌───┴───┐
8 9
┌─┴─┐ ┌─┴─┐
8 8 4 9
┌┴┐ ┌┴┐ ┌┴┐ ┌┴┐
6 1 0 7 1 3 8 3
 
min-heap: 0 1 1 8 6 3 3 9 8 8 7 4 9 8 9
0
┌───┴───┐
1 1
┌─┴─┐ ┌─┴─┐
8 6 3 3
┌┴┐ ┌┴┐ ┌┴┐ ┌┴┐
9 8 8 7 4 9 8 9

### See also

ranges::is_heap

(C++20)

checks if the given range is a max heap
(algorithm function object)

ranges::is_heap_until

(C++20)

finds the largest subrange that is a max heap
(algorithm function object)

ranges::push_heap

(C++20)

adds an element to a max heap
(algorithm function object)

ranges::pop_heap

(C++20)

removes the largest element from a max heap
(algorithm function object)

ranges::sort_heap

(C++20)

turns a max heap into a range of elements sorted in ascending order
(algorithm function object)

make_heap

creates a max heap out of a range of elements 
(function template)