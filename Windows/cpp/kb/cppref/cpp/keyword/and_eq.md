### Usage

- alternative operators: as an alternative for &=

### Example

Run this code

#include <bitset>
#include <iostream>
 
int main()
{
std::bitset<4> mask("1100");
std::bitset<4> val("0111");
val and_eq mask;
std::cout << val << '\n';
}

Output:

0100

### See also

- and

- bitand, bitor

- not, not_eq

- or, or_eq

- xor, xor_eq