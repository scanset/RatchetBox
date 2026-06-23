Defined in header <wctype.h>

int iswcntrl( wint_t ch );

(since C95)

Checks if the given wide character is a control character, i.e. codes 0x00-0x1F and 0x7F and any control characters specific to the current locale.

### Parameters

ch

-

wide character

### Return value

Non-zero value if the wide character is a control character, zero otherwise.

### Notes

ISO 30112 defines POSIX control characters as Unicode characters U+0000..U+001F, U+007F..U+009F, U+2028, and U+2029 (Unicode classes Cc, Zl, and Zp)

### Example

Run this code

#include <locale.h>
#include <stdio.h>
#include <wchar.h>
#include <wctype.h>
 
int main(void)
{
wchar_t c = L'\u2028'; // the Unicode character "line separator"
printf("In the default locale, iswcntrl(%#x) = %d\n", c, !!iswcntrl(c));
setlocale(LC_ALL, "en_US.utf8");
printf("In Unicode locale, iswcntrl(%#x) = %d\n", c, !!iswcntrl(c));
}

Output:

In the default locale, iswcntrl(0x2028) = 0
In Unicode locale, iswcntrl(0x2028) = 1

### References

- C23 standard (ISO/IEC 9899:2024): 

- 7.30.2.1.4 The iswcntrl function (p: TBD)

- C17 standard (ISO/IEC 9899:2018): 

- 7.30.2.1.4 The iswcntrl function (p: TBD)

- C11 standard (ISO/IEC 9899:2011): 

- 7.30.2.1.4 The iswcntrl function (p: 449)

- C99 standard (ISO/IEC 9899:1999): 

- 7.25.2.1.4 The iswcntrl function (p: 395)

### See also

iscntrl

checks if a character is a control character 
(function)

C++ documentation for iswcntrl

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