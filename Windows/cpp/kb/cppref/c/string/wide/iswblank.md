Defined in header <wctype.h>

int iswblank( wint_t ch );

(since C99)

Checks if the given wide character is classified as blank character (that is, a whitespace character used to separate words in a sentence) by the current C locale. In the default C locale, only space (0x20) and horizontal tab (0x09) are blank characters.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character is a blank character, zero otherwise.

### Notes

ISO 30112 defines POSIX blank characters as Unicode characters U+0009, U+0020, U+1680, U+180E, U+2000..U+2006, U+2008, U+200A, U+205F, and U+3000.

### Example

Run this code

#include <locale.h>
#include <stdio.h>
#include <wchar.h>
#include <wctype.h>
 
int main(void)
{
wchar_t c = L'\u3000'; // Ideographic space ('　')
printf("In the default locale, iswblank(%#x) = %d\n", c, !!iswblank(c));
setlocale(LC_ALL, "en_US.utf8");
printf("In Unicode locale, iswblank(%#x) = %d\n", c, !!iswblank(c));
}

Output:

In the default locale, iswblank(0x3000) = 0
In Unicode locale, iswblank(0x3000) = 1

### References

- C23 standard (ISO/IEC 9899:2024): 

- 7.30.2.1.3 The iswblank function (p: TBD)

- C17 standard (ISO/IEC 9899:2018): 

- 7.30.2.1.3 The iswblank function (p: TBD)

- C11 standard (ISO/IEC 9899:2011): 

- 7.30.2.1.3 The iswblank function (p: 449)

- C99 standard (ISO/IEC 9899:1999): 

- 7.25.2.1.3 The iswblank function (p: 395)

### See also

isblank

(C99)

checks if a character is a blank character 
(function)

C++ documentation for iswblank

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