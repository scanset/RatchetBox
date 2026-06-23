Defined in header <ranges>

template< class T >

using iterator_t = decltype(ranges::begin(std::declval<T&>()));

(1)
(since C++20)

template< ranges::range R >

using const_iterator_t = decltype(ranges::cbegin(std::declval<R&>()));

(2)
(since C++23)

template< ranges::range R >

using sentinel_t = decltype(ranges::end(std::declval<R&>()));

(3)
(since C++20)

template< ranges::range R >

using const_sentinel_t = decltype(ranges::cend(std::declval<R&>()));

(4)
(since C++23)

1) Used to obtain the iterator type of the type T.

2) Used to obtain the constant iterator type of the range type R.

3) Used to obtain the sentinel type of the range type R.

4) Used to obtain the constant sentinel type of the range type R.

### Template parameters

T

-

a type that can be used in std::ranges::begin

R

-

a range type or a sized_range type

### Notes

iterator_t can be applied to non-range types, e.g. arrays with unknown bound.

### Defect reports

The following behavior-changing defect reports were applied retroactively to previously published C++ standards.

DR

Applied to

Behavior as published

Correct behavior

LWG 3946

C++23

const_iterator_t and const_sentinel_t were inconsistent
with the result of ranges::cbegin and ranges::cend respectively

tweaked

### See also

iter_value_titer_reference_titer_const_reference_titer_difference_titer_rvalue_reference_titer_common_reference_t

(C++20)(C++20)(C++23)(C++20)(C++20)(C++20)

computes the associated types of an iterator
(alias template)

ranges::range_difference_tranges::range_size_tranges::range_value_t

(C++20)(C++20)(C++20)

obtains size, difference, and value types of a range
(alias template)

ranges::range_reference_tranges::range_const_reference_tranges::range_rvalue_reference_tranges::range_common_reference_t

(C++20)(C++23)(C++20)(C++20)

obtains reference types of a range
(alias template)