Defined in header <string>

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( const std::basic_string<CharT,Traits,Alloc>& lhs,

const std::basic_string<CharT,Traits,Alloc>& rhs );

(1)
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( const std::basic_string<CharT,Traits,Alloc>& lhs,

const CharT* rhs );

(2)
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( const std::basic_string<CharT,Traits,Alloc>& lhs,

CharT rhs );

(3)
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

constexpr std::basic_string<CharT,Traits,Alloc>

    operator+( const std::basic_string<CharT,Traits,Alloc>& lhs,

std::type_identity_t<std::basic_string_view<CharT,Traits>> rhs );

(4)
(since C++26)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( const CharT* lhs,

const std::basic_string<CharT,Traits,Alloc>& rhs );

(5)
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( CharT lhs,

const std::basic_string<CharT,Traits,Alloc>& rhs );

(6)
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

constexpr std::basic_string<CharT,Traits,Alloc>

    operator+( std::type_identity_t<std::basic_string_view<CharT,Traits>> lhs,

const std::basic_string<CharT,Traits,Alloc>& rhs );

(7)
(since C++26)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( std::basic_string<CharT,Traits,Alloc>&& lhs,

std::basic_string<CharT,Traits,Alloc>&& rhs );

(8)
(since C++11) 
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( std::basic_string<CharT,Traits,Alloc>&& lhs,

const std::basic_string<CharT,Traits,Alloc>& rhs );

(9)
(since C++11) 
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( std::basic_string<CharT,Traits,Alloc>&& lhs,

const CharT* rhs );

(10)
(since C++11) 
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( std::basic_string<CharT,Traits,Alloc>&& lhs,

CharT rhs );

(11)
(since C++11) 
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

constexpr std::basic_string<CharT,Traits,Alloc>

    operator+( std::basic_string<CharT,Traits,Alloc>&& lhs,

std::type_identity_t<std::basic_string_view<CharT,Traits>> rhs );

(12)
(since C++26)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( const std::basic_string<CharT,Traits,Alloc>& lhs,

std::basic_string<CharT,Traits,Alloc>&& rhs );

(13)
(since C++11) 
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( const CharT* lhs,

std::basic_string<CharT,Traits,Alloc>&& rhs );

(14)
(since C++11) 
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

std::basic_string<CharT,Traits,Alloc>

    operator+( CharT lhs,

std::basic_string<CharT,Traits,Alloc>&& rhs );

(15)
(since C++11) 
(constexpr since C++20)

template< class CharT, class Traits, class Alloc >

constexpr std::basic_string<CharT,Traits,Alloc>

    operator+( std::type_identity_t<std::basic_string_view<CharT,Traits>> lhs,

std::basic_string<CharT,Traits,Alloc>&& rhs );

(16)
(since C++26)

Returns a string containing characters from lhs followed by the characters from rhs. Equivalent to:

1,2) std::basic_string<CharT, Traits, Allocator> r = lhs; r.append(rhs); return r;

3) std::basic_string<CharT, Traits, Allocator> r = lhs; r.push_back(rhs); return r;

4) std::basic_string<CharT, Traits, Allocator> r = lhs; r.append(rhs); return r;

5) std::basic_string<CharT, Traits, Allocator> r = rhs; r.insert(0, lhs); return r;

6) std::basic_string<CharT, Traits, Allocator> r = rhs; r.insert(r.begin(), lhs); return r;

7) std::basic_string<CharT, Traits, Allocator> r = rhs; r.insert(0, lhs); return r;

8) lhs.append(rhs); return std::move(lhs); except that both lhs and rhs are left in valid but unspecified states. If lhs and rhs have equal allocators, the implementation can move from either.

9,10) lhs.append(rhs); return std::move(lhs);

11) lhs.push_back(rhs); return std::move(lhs);

12) lhs.append(rhs); return std::move(lhs);

13,14) rhs.insert(0, lhs); return std::move(rhs);

15) rhs.insert(rhs.begin(), lhs); return std::move(rhs);

16) rhs.insert(0, lhs); return std::move(rhs);

The allocator used for the result is:

1-4) std::allocator_traits<Alloc>::select_on_container_copy_construction(lhs.get_allocator())

5-7) std::allocator_traits<Alloc>::select_on_container_copy_construction(rhs.get_allocator())

8-12) lhs.get_allocator()

13-16) rhs.get_allocator()

In other words:

- If one operand is a basic_string rvalue, its allocator is used.

- Otherwise, select_on_container_copy_construction is used on the allocator of the lvalue basic_string operand.

In each case, the left operand is preferred when both are basic_strings of the same value category.

For (8-16), all rvalue basic_string operands are left in valid but unspecified states.

(since C++11)

### Parameters

lhs

-

string, string view(since C++26), character, or pointer to the first character in a null-terminated array

rhs

-

string, string view(since C++26), character, or pointer to the first character in a null-terminated array

### Return value

A string containing characters from lhs followed by the characters from rhs, using the allocator determined as above(since C++11).

### Notes

operator+ should be used with great caution when stateful allocators are involved (such as when std::pmr::string is used)(since C++17). Prior to P1165R1, the allocator used for the result was determined by historical accident and can vary from overload to overload for no apparent reason. Moreover, for (1-5), the allocator propagation behavior varies across major standard library implementations and differs from the behavior depicted in the standard.

Because the allocator used by the result of operator+ is sensitive to value category, operator+ is not associative with respect to allocator propagation:

using my_string = std::basic_string<char, std::char_traits<char>, my_allocator<char>>;
my_string cat();
const my_string& dog();
 
my_string meow = /* ... */, woof = /* ... */;
meow + cat() + /* ... */; // uses select_on_container_copy_construction on meow's allocator
woof + dog() + /* ... */; // uses allocator of dog()'s return value instead
 
meow + woof + meow; // uses select_on_container_copy_construction on meow's allocator
meow + (woof + meow); // uses SOCCC on woof's allocator instead

For a chain of operator+ invocations, the allocator used for the ultimate result may be controlled by prepending an rvalue basic_string with the desired allocator:

// use my_favorite_allocator for the final result
my_string(my_favorite_allocator) + meow + woof + cat() + dog();

For better and portable control over allocators, member functions like append, insert, and operator+= should be used on a result string constructed with the desired allocator.

(since C++11)

The usage of std::type_identity_t as parameter in overloads (4), (7), (12), and (16) ensures that an object of type std::basic_string<CharT, Traits, Allocator> can always be concatenated to an object of a type T with an implicit conversion to std::basic_string_view<CharT, Traits>, and vice versa, as per overload resolution rules.

Feature-test macro

Value

Std

Feature

__cpp_lib_string_view
202403
(C++26)
Concatenation of strings and string views, overloads (4), (7), (12), (16)

(since C++26)

### Example

Run this code

#include <iostream>
#include <string>
#include <string_view>
 
int main()
{
std::string s1 = "Hello";
std::string s2 = "world";
const char* end = "!\n";
std::cout << s1 + ' ' + s2 + end;
 
std::string_view water{" Water"};
#if __cpp_lib_string_view >= 202403
std::cout << s1 + water + s2 << end; // overload (4), then (1)
#else
std::cout << s1 + std::string(water) + s2 << end; // OK, but less efficient
#endif
}

Output:

Hello world!
Hello Waterworld!

### Defect reports

The following behavior-changing defect reports were applied retroactively to previously published C++ standards.

DR

Applied to

Behavior as published

Correct behavior

P1165R1

C++11

allocator propagation is haphazard and inconsistent

made more consistent

### See also

operator+=

appends characters to the end 
(public member function)

append

appends characters to the end 
(public member function)

insert

inserts characters 
(public member function)