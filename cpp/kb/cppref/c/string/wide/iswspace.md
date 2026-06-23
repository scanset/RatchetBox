Defined in header <wctype.h>

int iswspace( wint_t ch );

(since C95)

Checks if the given wide character is a whitespace character, i.e. either space (0x20), form feed (0x0c), line feed (0x0a), carriage return (0x0d), horizontal tab (0x09), vertical tab (0x0b) or any whitespace character specific to the current locale.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character is a whitespace character, zero otherwise.

### Notes

ISO 30112 defines POSIX space characters as Unicode characters U+0009..U+000D, U+0020, U+1680, U+180E, U+2000..U+2006, U+2008..U+200A, U+2028, U+2029, U+205F, and U+3000.

### Example

Run this code

#include <locale.h>
#include <stdio.h>
#include <wchar.h>
#include <wctype.h>
 
int main(void)
{
wchar_t c = L'\u2003'; // Unicode character 'EM SPACE'
printf("In the default locale, iswspace(%#x) = %d\n", c, !!iswspace(c));
setlocale(LC_ALL, "en_US.utf8");
printf("In Unicode locale, iswspace(%#x) = %d\n", c, !!iswspace(c));
}

Output:

In the default locale, iswspace(0x2003) = 0
In Unicode locale, iswspace(0x2003) = 1

### References

- C23 standard (ISO/IEC 9899:2024): 

- 7.30.2.1.10 The iswspace function (p: TBD)

- C17 standard (ISO/IEC 9899:2018): 

- 7.30.2.1.10 The iswspace function (p: TBD)

- C11 standard (ISO/IEC 9899:2011): 

- 7.30.2.1.10 The iswspace function (p: 450-451)

- C99 standard (ISO/IEC 9899:1999): 

- 7.25.2.1.10 The iswspace function (p: 396-397)

### See also

isspace

checks if a character is a space character 
(function)

C++ documentation for iswspace

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

\173–\176

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