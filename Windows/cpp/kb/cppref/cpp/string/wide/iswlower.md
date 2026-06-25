Defined in header <cwctype>

int iswlower( std::wint_t ch );

Checks if the given wide character is a lowercase letter, i.e. one of abcdefghijklmnopqrstuvwxyz or any lowercase letter specific to the current locale.

If the value of ch is neither representable as a wchar_t nor equal to the value of the macro WEOF, the behavior is undefined.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character is a lowercase letter, zero otherwise.

### Notes

ISO 30112 specifies which Unicode characters are include in POSIX lower category.

### Example

Run this code

#include <clocale>
#include <cwctype>
#include <iostream>
 
int main()
{
wchar_t c = L'\u0444'; // Cyrillic small letter ef ('ф')
 
std::cout << std::hex << std::showbase << std::boolalpha
<< "in the default locale, iswlower("
<< static_cast<std::wint_t>(c) << ") = "
<< static_cast<bool>(std::iswlower(c)) << '\n';
 
std::setlocale(LC_ALL, "en_US.utf8");
std::cout << "in Unicode locale, iswlower("
<< static_cast<std::wint_t>(c) << ") = "
<< static_cast<bool>(std::iswlower(c)) << '\n';
}

Output:

in the default locale, iswlower(0x444) = false
in Unicode locale, iswlower(0x444) = true

### See also

islower(std::locale)

checks if a character is classified as lowercase by a locale 
(function template)

islower

checks if a character is lowercase 
(function)

C documentation for iswlower

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