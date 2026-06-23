Defined in header <cctype>

int ispunct( int ch );

Checks if the given character is a punctuation character as classified by the current C locale. The default C locale classifies the characters (!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~) as punctuation.

The behavior is undefined if the value of ch is not representable as unsigned char and is not equal to EOF.

### Parameters

ch

-

character to classify

### Return value

Non-zero value if the character is a punctuation character, zero otherwise.

### Notes

Like all other functions from <cctype>, the behavior of std::ispunct is undefined if the argument's value is neither representable as unsigned char nor equal to EOF. To use these functions safely with plain chars (or signed chars), the argument should first be converted to unsigned char:

bool my_ispunct(char ch)
{
return std::ispunct(static_cast<unsigned char>(ch));
}

Similarly, they should not be directly used with standard algorithms when the iterator's value type is char or signed char. Instead, convert the value to unsigned char first:

int count_puncts(const std::string& s)
{
return std::count_if(s.begin(), s.end(),
// static_cast<int(*)(int)>(std::ispunct) // wrong
// [](int c){ return std::ispunct(c); } // wrong
// [](char c){ return std::ispunct(c); } // wrong
[](unsigned char c){ return std::ispunct(c); } // correct
);
}

### Example

Run this code

#include <cctype>
#include <clocale>
#include <iostream>
 
int main()
{
unsigned char c = '\xd7'; // the character × (multiplication sign) in ISO-8859-1
 
std::cout << "ispunct(\'\\xd7\', default C locale) returned "
<< std::boolalpha << (bool)std::ispunct(c) << '\n';
 
std::setlocale(LC_ALL, "en_GB.iso88591");
std::cout << "ispunct(\'\\xd7\', ISO-8859-1 locale) returned "
<< std::boolalpha << (bool)std::ispunct(c) << '\n';
}

Possible output:

ispunct('\xd7', default C locale) returned false
ispunct('\xd7', ISO-8859-1 locale) returned true

### See also

ispunct(std::locale)

checks if a character is classified as punctuation by a locale 
(function template)

iswpunct

checks if a wide character is a punctuation character 
(function)

C documentation for ispunct

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