basic_string& operator+=( const basic_string& str );

(1)
(constexpr since C++20)

basic_string& operator+=( CharT ch );

(2)
(constexpr since C++20)

basic_string& operator+=( const CharT* s );

(3)
(constexpr since C++20)

basic_string& operator+=( std::initializer_list<CharT> ilist );

(4)
(since C++11) 
(constexpr since C++20)

template< class StringViewLike >

basic_string& operator+=( const StringViewLike& t );

(5)
(since C++17) 
(constexpr since C++20)

Appends additional characters to the string.

1) Appends string str.

2) Appends character ch.

3) Appends the null-terminated character string pointed to by s. 

4) Appends characters in the initializer list ilist.

5) Implicitly converts t to a string view sv as if by std::basic_string_view<CharT, Traits> sv = t;, then appends characters in the string view sv as if by append(sv).

This overload participates in overload resolution only if std::is_convertible_v<const StringViewLike&,
                      std::basic_string_view<CharT, Traits>> is true and std::is_convertible_v<const StringViewLike&, const CharT*> is false.

### Parameters

str

-

string to append

ch

-

character value to append

s

-

pointer to a null-terminated character string to append

ilist

-

std::initializer_list with the characters to append

t

-

object (convertible to std::basic_string_view) with the characters to append

### Return value

*this

### Complexity

There are no standard complexity guarantees, typical implementations behave similar to std::vector::insert().

### Exceptions

If the operation would cause size() to exceed max_size(), throws std::length_error.

If an exception is thrown for any reason, this function has no effect (strong exception safety guarantee).

### Notes

Overload (2) can accept any types that are implicitly convertible to CharT. For std::string, where CharT is char, the set of acceptable types includes all arithmetic types. This may have unintended effects.

### Example

Run this code

#include <iomanip>
#include <iostream>
#include <string>
 
int main()
{
std::string str;
 
// reserve sufficient storage space to avoid memory reallocation
str.reserve(50);
 
std::cout << std::quoted(str) << '\n'; // empty string
 
str += "This";
std::cout << std::quoted(str) << '\n';
 
str += std::string(" is ");
std::cout << std::quoted(str) << '\n';
 
str += 'a';
std::cout << std::quoted(str) << '\n';
 
str += {' ', 's', 't', 'r', 'i', 'n', 'g', '.'};
std::cout << std::quoted(str) << '\n';
 
str += 69.96; // Equivalent to str += static_cast<char>(69.96);
// 'E' (ASCII code 69) is appended by overload (2),
// which might not be the intent.
 
// To add a numeric value, consider std::to_string():
str += std::to_string(1729);
 
std::cout << std::quoted(str) << '\n';
}

Output:

""
"This"
"This is "
"This is a"
"This is a string."
"This is a string.E1729"

### Defect reports

The following behavior-changing defect reports were applied retroactively to previously published C++ standards.

DR

Applied to

Behavior as published

Correct behavior

LWG 847

C++98

there was no exception safety guarantee

added strong exception safety guarantee

LWG 2946

C++17

overload (5) caused ambiguity in some cases

avoided by making it a template

### See also

append

appends characters to the end 
(public member function)