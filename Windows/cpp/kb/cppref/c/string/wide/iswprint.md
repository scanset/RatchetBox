Defined in header <wctype.h>

int iswprint( wint_t ch );

(since C95)

Checks if the given wide character can be printed, i.e. it is either a number (0123456789), an uppercase letter (ABCDEFGHIJKLMNOPQRSTUVWXYZ), a lowercase letter (abcdefghijklmnopqrstuvwxyz), a punctuation character (!"#$%&'()*+,-./:;<=>?@[\]^_`{!}~), space or any printable character specific to the current C locale.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character can be printed, zero otherwise.

### Notes

ISO 30112 specifies which Unicode characters are included in POSIX print category.

### Example

Run this code

#include <locale.h>
#include <stdio.h>
#include <wchar.h>
#include <wctype.h>
 
int main(void)
{
wchar_t c = L'\u2002'; // Unicode character 'EN SPACE'
printf("in the default locale, iswprint(%#x) = %d\n", c, !!iswprint(c));
setlocale(LC_ALL, "en_US.utf8");
printf("in Unicode locale, iswprint(%#x) = %d\n", c, !!iswprint(c));
wchar_t c2 = L'\x82'; // break permitted
printf("in Unicode locale, iswprint(%#x) = %d\n", c2, !!iswprint(c2));
}

Output:

in the default locale, iswprint(0x2002) = 0
in Unicode locale, iswprint(0x2002) = 1
in Unicode locale, iswprint(0x82) = 0

### References

- C23 standard (ISO/IEC 9899:2024): 

- 7.30.2.1.8 The iswprint function (p: TBD)

- C17 standard (ISO/IEC 9899:2018): 

- 7.30.2.1.8 The iswprint function (p: TBD)

- C11 standard (ISO/IEC 9899:2011): 

- 7.30.2.1.8 The iswprint function (p: 450)

- C99 standard (ISO/IEC 9899:1999): 

- 7.25.2.1.8 The iswprint function (p: 396)

### See also

isprint

checks if a character is a printing character 
(function)

C++ documentation for iswprint

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