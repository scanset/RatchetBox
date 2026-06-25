static constexpr std::chrono::year min() noexcept;

(since C++20)

Returns the smallest possible year, that is, std::chrono::year(-32767).

### Return value

std::chrono::year(-32767)

### Example

Run this code

#include <chrono>
#include <iostream>
 
int main()
{
std::cout << "The minimum year is: " << (int)std::chrono::year::min() << '\n';
}

Output:

The minimum year is: -32767