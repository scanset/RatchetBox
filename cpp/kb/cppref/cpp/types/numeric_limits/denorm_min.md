static T denorm_min() throw();

(until C++11)

static constexpr T denorm_min() noexcept;

(since C++11)

Returns the minimum positive subnormal value of the type T, if std::numeric_limits<T>::has_denorm != std::denorm_absent, otherwise returns std::numeric_limits<T>::min() for floating point types and T() for all other types. Only meaningful for floating-point types.

### Return value

T

std::numeric_limits<T>::denorm_min()

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

unsigned long long since (since C++11)

​0​

float

FLT_TRUE_MIN (\(\scriptsize 2^{-149}\)2-149
if
std::numeric_limits<float>::is_iec559 is true)

double

DBL_TRUE_MIN (\(\scriptsize 2^{-1074}\)2-1074
if
std::numeric_limits<double>::is_iec559 is true)

long double

LDBL_TRUE_MIN

### Example

Demonstates the underlying bit structure of the denorm_min() and prints the values:

Run this code

#include <cassert>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <limits>
 
int main()
{
// the smallest subnormal value has sign bit = 0, exponent = 0
// and only the least significant bit of the fraction is 1
std::uint32_t denorm_bits = 0x0001;
float denorm_float;
std::memcpy(&denorm_float, &denorm_bits, sizeof(float));
 
assert(denorm_float == std::numeric_limits<float>::denorm_min());
 
std::cout << "float\tmin()\t\tdenorm_min()\n";
std::cout << "\t" << std::numeric_limits<float>::min() << '\t';
std::cout << std::numeric_limits<float>::denorm_min() << '\n';
 
std::cout << "double\tmin()\t\tdenorm_min()\n";
std::cout << "\t" << std::numeric_limits<double>::min() << '\t';
std::cout << std::numeric_limits<double>::denorm_min() << '\n';
}

Possible output:

float min() denorm_min()
1.17549e-38 1.4013e-45
double min() denorm_min()
2.22507e-308 4.94066e-324

### See also

min

[static]

returns the smallest finite value of the given non-floating-point type, or the smallest positive normal value of the given floating-point type 
(public static member function)

has_denorm

[static]

identifies the denormalization style used by the floating-point type 
(public static member constant)

lowest

[static] (C++11)

returns the lowest finite value of the given type, i.e. the most negative value for signed types, ​0​ for unsigned types 
(public static member function)