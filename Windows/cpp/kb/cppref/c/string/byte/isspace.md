Defined in header <ctype.h>

int isspace( int ch );

Checks if the given character is either

- A standard white-space character:

- Space (0x20, ' '),

- Form feed (0x0c, '\f'),

- Line feed (0x0a, '\n'),

- Carriage return (0x0d, '\r'),

- Horizontal tab (0x09, '\t'),

- Vertical tab (0x0b, '\v'),

- Or a locale-specific white-space character.

The behavior is undefined if the value of ch is not representable as unsigned char and is not equal to EOF.

### Parameters

ch

-

character to classify

### Return value

Non-zero value if the character is a whitespace character, zero otherwise.

### Example

Run this code

#include <ctype.h>
#include <limits.h>
#include <stdio.h>
 
int main(void)
{
for (int ndx = 0; ndx <= UCHAR_MAX; ++ndx)
if (isspace(ndx))
printf("0x%02x ", ndx);
}

Output:

0x09 0x0a 0x0b 0x0c 0x0d 0x20

### References

- C23 standard (ISO/IEC 9899:2024): 

- 7.4.1.10 The isspace function (p: TBD)

- C17 standard (ISO/IEC 9899:2018): 

- 7.4.1.10 The isspace function (p: 147)

- C11 standard (ISO/IEC 9899:2011): 

- 7.4.1.10 The isspace function (p: 202-203)

- C99 standard (ISO/IEC 9899:1999): 

- 7.4.1.10 The isspace function (p: 183-184)

- C89/C90 standard (ISO/IEC 9899:1990): 

- 4.3.1.9 The isspace function 

### See also

iswspace

(C95)

checks if a wide character is a space character 
(function)

C++ documentation for isspace

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