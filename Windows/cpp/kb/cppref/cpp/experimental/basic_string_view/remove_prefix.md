constexpr void remove_prefix(size_type n);

(library fundamentals TS)

Moves the start of the view forward by n characters.

The behavior is undefined if n > size().

### Parameters

n

-

number of characters to remove from the start of the view

### Return value

(none)

### Complexity

Constant.

### Example

Run this code

#include <iostream>
#include <experimental/string_view>
int main()
{
std::string str = " trim me";
std::experimental::string_view v = str;
v.remove_prefix(std::min(v.find_first_not_of(" "), v.size()));
std::cout << "String: '" << str << "'\n"
<< "View  : '" << v << "'\n";
}

Output:

String: ' trim me'
View  : 'trim me'

### See also

remove_suffix

shrinks the view by moving its end backward 
(public member function)