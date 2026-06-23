static T infinity() throw();

(until C++11)

static constexpr T infinity() noexcept;

(since C++11)

Returns the special value "positive infinity", as represented by the floating-point type T. Only meaningful if std::numeric_limits<T>::has_infinity == true. In IEEE 754, the most common binary representation of floating-point numbers, the positive infinity is the value with all bits of the exponent set and all bits of the fraction cleared.

### Return value

T

std::numeric_limits<T>::infinity()

/* non-specialized */

T()

bool

false

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

HUGE_VALF

double

HUGE_VAL

long double

HUGE_VALL

### Example

Run this code

#include <iostream>
#include <limits>
 
int main()
{
double max = std::numeric_limits<double>::max();
double inf = std::numeric_limits<double>::infinity();
 
if (inf > max)
std::cout << inf << " is greater than " << max << '\n';
}

Output:

inf is greater than 1.79769e+308

### See also

has_infinity

[static]

identifies floating-point types that can represent the special value "positive infinity" 
(public static member constant)