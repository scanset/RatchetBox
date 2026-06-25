constexpr sub_match();

(since C++11)

Default constructs a std::sub_match. The matched member is set to false and the inherited members first and second are value-initialized.

This is the only publicly accessible and defined constructor.

### Example

Run this code

#include <cassert>
#include <regex>
 
int main()
{
std::sub_match<const char*> s;
assert(!s.matched);
}