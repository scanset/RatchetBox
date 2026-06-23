Defined in header <cwctype>

int iswdigit( wint_t ch );

Checks if the given wide character corresponds (if narrowed) to one of the ten decimal digit characters 0123456789.

If the value of ch is neither representable as a wchar_t nor equal to the value of the macro WEOF, the behavior is undefined.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character is a numeric character, zero otherwise.

### Notes

std::iswdigit and std::iswxdigit are the only standard wide character classification functions that are not affected by the currently installed C locale.

### Example

Some locales offer additional character classes that detect non-ASCII digits

Run this code

#include <clocale>
#include <cwctype>
#include <iostream>
 
void test(wchar_t a3, wchar_t u3, wchar_t j3)
{
std::wcout << std::boolalpha
<< "\t '" << a3 << "' '" << u3 << "' '" << j3 << "'\n"
<< "iswdigit: "
<< (bool)std::iswdigit(a3) << " "
<< (bool)std::iswdigit(u3) << " "
<< (bool)std::iswdigit(j3) << '\n'
<< "jdigit: "
<< (bool)std::iswctype(a3, std::wctype("jdigit")) << ' '
<< (bool)std::iswctype(u3, std::wctype("jdigit")) << ' '
<< (bool)std::iswctype(j3, std::wctype("jdigit")) << '\n';
}
 
int main()
{
wchar_t a3 = L'3'; // the ASCII digit 3
wchar_t u3 = L'三'; // the CJK numeral 3
wchar_t j3 = L'３'; // the full-width digit 3
 
std::setlocale(LC_ALL, "en_US.utf8");
std::wcout << "In American locale:\n";
test(a3, u3, j3);
 
std::wcout << "\nIn Japanese locale:\n";
std::setlocale(LC_ALL, "ja_JP.utf8");
test(a3, u3, j3);
}

Possible output:

In American locale:
'3' '三' '３'
iswdigit: true false false
jdigit: false false false
 
In Japanese locale:
'3' '三' '３'
iswdigit: true false false
jdigit: false false true

### See also

isdigit(std::locale)

checks if a character is classified as a digit by a locale 
(function template)

isdigit

checks if a character is a digit 
(function)

C documentation for iswdigit

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