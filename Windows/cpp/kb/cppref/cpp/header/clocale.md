This header was originally in the C standard library as <locale.h>.

This header is part of the text processing library.

### Types

lconv

formatting details, returned by std::localeconv 
(class)

### Constants

NULL

implementation-defined null pointer constant 
(macro constant)

LC_ALLLC_COLLATELC_CTYPELC_MONETARYLC_NUMERICLC_TIME

locale categories for std::setlocale 
(macro constant)

### Functions

setlocale

gets and sets the current C locale 
(function)

localeconv

queries numeric and monetary formatting details of the current locale 
(function)

### Synopsis

namespace std {
struct lconv;
 
char* setlocale(int category, const char* locale);
lconv* localeconv();
}
 
#define NULL /* see description */
#define LC_ALL /* see description */
#define LC_COLLATE /* see description */
#define LC_CTYPE /* see description */
#define LC_MONETARY /* see description */
#define LC_NUMERIC /* see description */
#define LC_TIME /* see description */

### Notes

- NULL is also defined in the following headers:
<cstring>

- <ctime>

- <cstddef>

- <cstdio>

- <cwchar>