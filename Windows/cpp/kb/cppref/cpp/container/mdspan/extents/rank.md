static constexpr rank_type rank() const noexcept;

(since C++23)

Returns the number of dimensions in extents.

### Parameters

(none)

### Return value

The number of dimensions.

### Example

Run this code

#include <iostream>
#include <mdspan>
 
int main()
{
std::extents<int, 1, 2> e1;
std::extents<int, 3, 4, std::dynamic_extent> e2(5);
std::cout << e1.rank() << ", " << e2.rank() << '\n';
}

Output:

2, 3

### See also

rank_dynamic

[static]

returns the dynamic rank of an extents 
(public static member function)

rank

(C++11)

obtains the number of dimensions of an array type 
(class template)