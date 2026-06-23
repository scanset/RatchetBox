constexpr /*iterator*/ begin() const;

(since C++20)

Obtains an iterator to the beginning value.

### Return value

iterator ﻿{value_ ﻿}

### Example

Run this code

#include <iostream>
#include <ranges>
 
int main()
{
auto iota{std::views::iota(2, 6)};
auto iter{iota.begin()};
while (iter != iota.end())
std::cout << *iter++ << ' ';
std::cout << '\n';
}

Output:

2 3 4 5