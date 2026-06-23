Defined in header <ctype.h>

int islower( int ch );

Checks if the given character is classified as a lowercase character according to the current C locale. In the default "C" locale, islower returns true only for the lowercase letters (abcdefghijklmnopqrstuvwxyz).

If islower returns true, it is guaranteed that iscntrl, isdigit, ispunct, and isspace return false for the same character in the same C locale.

The behavior is undefined if the value of ch is not representable as unsigned char and is not equal to EOF.

### Parameters

ch

-

character to classify

### Return value

Non-zero value if the character is a lowercase letter, zero otherwise.

### Example

Run this code

#include <stdio.h>
#include <ctype.h>
#include <locale.h>
 
int main(void)
{
unsigned char c = '\xe5'; // letter å in ISO-8859-1
printf("In the default C locale, \\xe5 is %slowercase\n",
islower(c) ? "" : "not " );
setlocale(LC_ALL, "en_GB.iso88591");
printf("In ISO-8859-1 locale, \\xe5 is %slowercase\n",
islower(c) ? "" : "not " );
}

Possible output:

In the default C locale, \xe5 is not lowercase
In ISO-8859-1 locale, \xe5 is lowercase

### References

- C17 standard (ISO/IEC 9899:2018): 

- 7.4.1.7 The islower function (p: 146)

- C11 standard (ISO/IEC 9899:2011): 

- 7.4.1.7 The islower function (p: 202)

- C99 standard (ISO/IEC 9899:1999): 

- 7.4.1.7 The islower function (p: 183)

- C89/C90 standard (ISO/IEC 9899:1990): 

- 4.3.1.6 The islower function 

### See also

iswlower

(C95)

checks if a wide character is an lowercase character 
(function)

C++ documentation for islower

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