std::size_t size() const;

(noexcept since C++11) 
(constexpr since C++11)

Returns the number of bits that the bitset holds.

### Parameters

(none)

### Return value

number of bits that the bitset holds, i.e. the template parameter N.

### Example

Run this code

#include <bitset>
#include <iostream>
 
int main()
{
std::cout << std::bitset<0x400>().size() << '\n';
}

Output:

1024

### See also

count

returns the number of bits set to true 
(public member function)