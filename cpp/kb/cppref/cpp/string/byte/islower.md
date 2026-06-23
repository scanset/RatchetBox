Defined in header <cctype>

int islower( int ch );

Checks if the given character is classified as a lowercase character according to the current C locale. In the default "C" locale, std::islower returns a nonzero value only for the lowercase letters (abcdefghijklmnopqrstuvwxyz).

If islower returns a nonzero value, it is guaranteed that std::iscntrl, std::isdigit, std::ispunct, and std::isspace return zero for the same character in the same C locale.

The behavior is undefined if the value of ch is not representable as unsigned char and is not equal to EOF.

### Parameters

ch

-

character to classify

### Return value

Non-zero value if the character is a lowercase letter, zero otherwise.

### Notes

Like all other functions from <cctype>, the behavior of std::islower is undefined if the argument's value is neither representable as unsigned char nor equal to EOF. To use these functions safely with plain chars (or signed chars), the argument should first be converted to unsigned char:

bool my_islower(char ch)
{
return std::islower(static_cast<unsigned char>(ch));
}

Similarly, they should not be directly used with standard algorithms when the iterator's value type is char or signed char. Instead, convert the value to unsigned char first:

int count_lowers(const std::string& s)
{
return std::count_if(s.begin(), s.end(),
// static_cast<int(*)(int)>(std::islower) // wrong
// [](int c){ return std::islower(c); } // wrong
// [](char c){ return std::islower(c); } // wrong
[](unsigned char c){ return std::islower(c); } // correct
);
}

### Example

Run this code

#include <cctype>
#include <clocale>
#include <iostream>
 
int main()
{
unsigned char c = '\xe5'; // letter å in ISO-8859-1
 
std::cout << "islower(\'\\xe5\', default C locale) returned "
<< std::boolalpha << (bool)std::islower(c) << '\n';
 
std::setlocale(LC_ALL, "en_GB.iso88591");
std::cout << "islower(\'\\xe5\', ISO-8859-1 locale) returned "
<< std::boolalpha << (bool)std::islower(c) << '\n';
 
}

Possible output:

islower('\xe5', default C locale) returned false
islower('\xe5', ISO-8859-1 locale) returned true

### See also

islower(std::locale)

checks if a character is classified as lowercase by a locale 
(function template)

iswlower

checks if a wide character is lowercase 
(function)

C documentation for islower

ASCII values

characters

iscntrl

iswcntrl

isprint

iswprint

isspace

iswspace

isblank

iswblank

isgraph

iswgraph

ispunct

iswpunct

isalnum

iswalnum

isalpha

iswalpha

isupper

iswupper

islower

iswlower

isdigit

iswdigit

isxdigit

iswxdigit

decimal

hexadecimal

octal

0–8

\x0–\x8

\0–\10

control codes (NUL, etc.)

≠0

0

0

0

0

0

0

0

0

0

0

0

9

\x9

\11

tab (\t)

≠0

0

≠0

≠0

0

0

0

0

0

0

0

0

10–13

\xA–\xD

\12–\15

whitespaces (\n, \v, \f, \r)

≠0

0

≠0

0

0

0

0

0

0

0

0

0

14–31

\xE–\x1F

\16–\37

control codes

≠0

0

0

0

0

0

0

0

0

0

0

0

32

\x20

\40

space

0

≠0

≠0

≠0

0

0

0

0

0

0

0

0

33–47

\x21–\x2F

\41–\57

!"#$%&'()*+,-./

0

≠0

0

0

≠0

≠0

0

0

0

0

0

0

48–57

\x30–\x39

\60–\71

0123456789

0

≠0

0

0

≠0

0

≠0

0

0

0

≠0

≠0

58–64

\x3A–\x40

\72–\100

:;<=>?@

0

≠0

0

0

≠0

≠0

0

0

0

0

0

0

65–70

\x41–\x46

\101–\106

ABCDEF

0

≠0

0

0

≠0

0

≠0

≠0

≠0

0

0

≠0

71–90

\x47–\x5A

\107–\132

GHIJKLMNOP
QRSTUVWXYZ

0

≠0

0

0

≠0

0

≠0

≠0

≠0

0

0

0

91–96

\x5B–\x60

\133–\140

[\]^_`

0

≠0

0

0

≠0

≠0

0

0

0

0

0

0

97–102

\x61–\x66

\141–\146

abcdef

0

≠0

0

0

≠0

0

≠0

≠0

0

≠0

0

≠0

103–122

\x67–\x7A

\147–\172

ghijklmnop
qrstuvwxyz

0

≠0

0

0

≠0

0

≠0

≠0

0

≠0

0

0

123–126

\x7B–\x7E

\172–\176

{|}~

0

≠0

0

0

≠0

≠0

0

0

0

0

0

0

127

\x7F

\177

backspace character (DEL)

≠0

0

0

0

0

0

0

0

0

0

0

0