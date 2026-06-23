Defined in header <wctype.h>

int iswpunct( wint_t ch );

(since C95)

Checks if the given wide character is a punctuation character, i.e. it is one of !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~ or any punctuation character specific to the current locale.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character is a punctuation character, zero otherwise.

### Notes

ISO 30112 specifies which Unicode characters are include in POSIX punct category.

### Example

Run this code

#include <stdio.h>
#include <wchar.h>
#include <wctype.h>
#include <locale.h>
 
int main(void)
{
const wchar_t c = L'\u2051'; // Two asterisks ('⁑')
printf("in the default locale, iswpunct(%#x) = %d\n", c, !!iswpunct(c));
setlocale(LC_ALL, "en_US.utf8");
printf("in Unicode locale, iswpunct(%#x) = %d\n", c, !!iswpunct(c));
}

Output:

in the default locale, iswpunct(0x2051) = 0
in Unicode locale, iswpunct(0x2051) = 1

### References

- C23 standard (ISO/IEC 9899:2024): 

- 7.30.2.1.9 The iswpunct function (p: TBD)

- C17 standard (ISO/IEC 9899:2018): 

- 7.30.2.1.9 The iswpunct function (p: TBD)

- C11 standard (ISO/IEC 9899:2011): 

- 7.30.2.1.9 The iswpunct function (p: 450)

- C99 standard (ISO/IEC 9899:1999): 

- 7.25.2.1.9 The iswpunct function (p: 396)

### See also

ispunct

checks if a character is a punctuation character 
(function)

C++ documentation for iswpunct

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