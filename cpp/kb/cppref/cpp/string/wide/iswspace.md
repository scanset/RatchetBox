Defined in header <cwctype>

int iswspace( wint_t ch );

Checks if the given wide character is a wide whitespace character as classified by the currently installed C locale. In the default locale, the whitespace characters are the following:

- Space (0x20, ' ')

- Form feed (0x0c, '\f')

- Line feed (0x0a, '\n')

- Carriage return (0x0d, '\r')

- Horizontal tab (0x09, '\t') 

- Vertical tab (0x0b, '\v').

If the value of ch is neither representable as a wchar_t nor equal to the value of the macro WEOF, the behavior is undefined.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character is a whitespace character, zero otherwise.

### Notes

ISO 30112 defines POSIX space characters as Unicode characters U+0009..U+000D, U+0020, U+1680, U+180E, U+2000..U+2006, U+2008..U+200A, U+2028, U+2029, U+205F, and U+3000.

### Example

Demonstrates the use of iswspace with different locales.

Run this code

#include <clocale>
#include <cwctype>
#include <iostream>
 
void try_with(wchar_t c, const char* loc)
{
std::setlocale(LC_ALL, loc);
std::wcout << "isspace('" << c << "') in " << loc << " locale returned "
<< std::boolalpha << static_cast<bool>(std::iswspace(c)) << '\n';
}
 
int main()
{
const wchar_t EM_SPACE = L'\u2003'; // Unicode character 'EM SPACE'
try_with(EM_SPACE, "C");
try_with(EM_SPACE, "en_US.UTF8");
}

Output:

isspace(' ') in C locale returned false
isspace(' ') in en_US.UTF8 locale returned true

### See also

isspace(std::locale)

checks if a character is classified as whitespace by a locale 
(function template)

isspace

checks if a character is a space character 
(function)

C documentation for iswspace

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