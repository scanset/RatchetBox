~any();

(since C++17)

Destroys the contained object, if any, as if by a call to reset().

### Example

Run this code

#include <any>
#include <cstdio>
 
struct X
{
X() { std::puts("X::X()"); }
X(const X&) { std::puts("X::X(const X&)"); }
~X() { std::puts("X::~X()"); }
};
 
int main()
{
std::any a{X{}};
std::puts("Leaving main()...");
}

Output:

X::X()
X::X(const X&)
X::~X()
Leaving main()...
X::~X()

### See also

reset

destroys contained object 
(public member function)