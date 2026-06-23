static const int max_exponent10;

(until C++11)

static constexpr int max_exponent10;

(since C++11)

The value of std::numeric_limits<T>::max_exponent10 is the largest positive number n such that \(\scriptsize 10^n\)10n
is a representable finite value of the floating-point type T.

### Standard specializations

T

value of std::numeric_limits<T>::max_exponent10

/* non-specialized */

​0​

bool

​0​

char

​0​

signed char

​0​

unsigned char

​0​

wchar_t

​0​

char8_t (since C++20)

​0​

char16_t (since C++11)

​0​

char32_t (since C++11)

​0​

short

​0​

unsigned short

​0​

int

​0​

unsigned int

​0​

long

​0​

unsigned long

​0​

long long (since C++11)

​0​

unsigned long long (since C++11)

​0​

float

FLT_MAX_10_EXP

double

DBL_MAX_10_EXP

long double

LDBL_MAX_10_EXP

### Example

Demonstrates the relationships of max_exponent, max_exponent10, and max() for the type float:

Run this code

#include <iostream>
#include <limits>
 
int main()
{
std::cout << "max() = " << std::numeric_limits<float>::max() << '\n'
<< "max_exponent10 = " << std::numeric_limits<float>::max_exponent10 << '\n'
<< std::hexfloat << '\n'
<< "max() = " << std::numeric_limits<float>::max() << '\n'
<< "max_exponent = " << std::numeric_limits<float>::max_exponent << '\n';
}

Output:

max() = 3.40282e+38
max_exponent10 = 38
 
max() = 0x1.fffffep+127
max_exponent = 128

### See also

max_exponent

[static]

one more than the largest integer power of the radix that is a valid finite floating-point value 
(public static member constant)

min_exponent

[static]

one more than the smallest negative power of the radix that is a valid normalized floating-point value 
(public static member constant)

min_exponent10

[static]

the smallest negative power of ten that is a valid normalized floating-point value 
(public static member constant)