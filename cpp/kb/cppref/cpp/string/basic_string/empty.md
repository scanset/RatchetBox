bool empty() const;

(noexcept since C++11) 
(constexpr since C++20)

Checks if the string has no characters, i.e. whether begin() == end().

### Parameters

(none)

### Return value

true if the string is empty, false otherwise

### Complexity

Constant.

### Example

Run this code

#include <iostream>
#include <string>
 
int main()
{
std::string s;
std::boolalpha(std::cout);
std::cout << "s.empty():" << s.empty() << "\t s:'" << s << "'\n";
 
s = "Exemplar";
std::cout << "s.empty():" << s.empty() << "\t s:'" << s << "'\n";
 
s = "";
std::cout << "s.empty():" << s.empty() << "\t s:'" << s << "'\n";
}

Output:

s.empty():true s:''
s.empty():false s:'Exemplar'
s.empty():true s:''

### See also

sizelength

returns the number of characters 
(public member function)

max_size

returns the maximum number of characters 
(public member function)

capacity

returns the number of characters that can be held in currently allocated storage 
(public member function)

sizessize

(C++17)(C++20)

returns the size of a container or array 
(function template)

empty

(C++17)

checks whether the container is empty 
(function template)

empty

checks whether the view is empty 
(public member function of std::basic_string_view<CharT,Traits>)