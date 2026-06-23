### Types

Defined in header <stdlib.h> 

div_t

structure type, return of the div function 
(typedef)

ldiv_t

structure type, return of the ldiv function 
(typedef)

lldiv_t

(C99)

structure type, return of the lldiv function 
(typedef)

Defined in header <inttypes.h> 

imaxdiv_t

(C99)

structure type, return of the imaxdiv function 
(typedef)

Defined in header <math.h> 

float_t

(C99)

most efficient floating-point type at least as wide as float 
(typedef)

double_t

(C99)

most efficient floating-point type at least as wide as double 
(typedef)

### Constants

Defined in header <math.h> 

HUGE_VALFHUGE_VALHUGE_VALL

(C99)(C99)

indicates value too big to be representable (infinity) by float, double and long double respectively 
(macro constant)

INFINITY

(C99)

evaluates to positive infinity or the value guaranteed to overflow a float 
(macro constant)

NAN

(C99)

evaluates to a quiet NaN of type float 
(macro constant)

FP_FAST_FMAFFP_FAST_FMAFP_FAST_FMAL

(C99)(C99)(C99)

indicates that the fma function generally executes about as fast as, or faster than, a multiply and an add of double operands 
(macro constant)

FP_ILOGB0FP_ILOGBNAN

(C99)(C99)

evaluates to ilogb(x) if x is zero or NaN, respectively 
(macro constant)

math_errhandlingMATH_ERRNOMATH_ERREXCEPT

(C99)(C99)(C99)

defines the error handling mechanism used by the common mathematical functions 
(macro constant)

#### Classification 

FP_NORMALFP_SUBNORMALFP_ZEROFP_INFINITEFP_NAN

(C99)(C99)(C99)(C99)(C99)

indicates a floating-point category 
(macro constant)

### Functions

Defined in header <stdlib.h> 

abslabsllabs

(C99)

computes absolute value of an integral value (\(\small{|x|}\)|x|) 
(function)

divldivlldiv

(C99)

computes quotient and remainder of integer division 
(function)

Defined in header <inttypes.h> 

imaxabs

(C99)

computes absolute value of an integral value (\(\small{|x|}\)|x|) 
(function)

imaxdiv

(C99)

computes quotient and remainder of integer division 
(function)

Defined in header <math.h> 

#### Basic operations 

fabsfabsffabsl

(C99)(C99)

computes absolute value of a floating-point value (\(\small{|x|}\)|x|) 
(function)

fmodfmodffmodl

(C99)(C99)

computes remainder of the floating-point division operation 
(function)

remainderremainderfremainderl

(C99)(C99)(C99)

computes signed remainder of the floating-point division operation 
(function)

remquoremquofremquol

(C99)(C99)(C99)

computes signed remainder as well as the three last bits of the division operation 
(function)

fmafmaffmal

(C99)(C99)(C99)

computes fused multiply-add operation 
(function)

fmaxfmaxffmaxl

(C99)(C99)(C99)

determines larger of two floating-point values 
(function)

fminfminffminl

(C99)(C99)(C99)

determines smaller of two floating-point values 
(function)

fdimfdimffdiml

(C99)(C99)(C99)

determines positive difference of two floating-point values (\({\small\max{(0, x-y)} }\)max(0, x-y)) 
(function)

nannanfnanl

(C99)(C99)(C99)

returns a NaN (not-a-number) 
(function)

#### Exponential functions 

expexpfexpl

(C99)(C99)

computes e raised to the given power (\({\small e^x}\)ex) 
(function)

exp2exp2fexp2l

(C99)(C99)(C99)

computes 2 raised to the given power (\({\small 2^x}\)2x) 
(function)

expm1expm1fexpm1l

(C99)(C99)(C99)

computes e raised to the given power, minus one (\({\small e^x-1}\)ex-1) 
(function)

loglogflogl

(C99)(C99)

computes natural (base-e) logarithm (\({\small \ln{x} }\)ln(x)) 
(function)

log10log10flog10l

(C99)(C99)

computes common (base-10) logarithm (\({\small \log_{10}{x} }\)log10(x)) 
(function)

log2log2flog2l

(C99)(C99)(C99)

computes base-2 logarithm (\({\small \log_{2}{x} }\)log2(x)) 
(function)

log1plog1pflog1pl

(C99)(C99)(C99)

computes natural (base-e) logarithm of 1 plus the given number (\({\small \ln{(1+x)} }\)ln(1+x)) 
(function)

#### Power functions 

powpowfpowl

(C99)(C99)

computes a number raised to the given power (\(\small{x^y}\)xy) 
(function)

sqrtsqrtfsqrtl

(C99)(C99)

computes square root (\(\small{\sqrt{x} }\)√x) 
(function)

cbrtcbrtfcbrtl

(C99)(C99)(C99)

computes cube root (\(\small{\sqrt[3]{x} }\)3√x) 
(function)

hypothypotfhypotl

(C99)(C99)(C99)

computes square root of the sum of the squares of two given numbers (\(\scriptsize{\sqrt{x^2+y^2} }\)√x2
+y2
) 
(function)

#### Trigonometric functions 

sinsinfsinl

(C99)(C99)

computes sine (\({\small\sin{x} }\)sin(x)) 
(function)

coscosfcosl

(C99)(C99)

computes cosine (\({\small\cos{x} }\)cos(x)) 
(function)

tantanftanl

(C99)(C99)

computes tangent (\({\small\tan{x} }\)tan(x)) 
(function)

asinasinfasinl

(C99)(C99)

computes arc sine (\({\small\arcsin{x} }\)arcsin(x)) 
(function)

acosacosfacosl

(C99)(C99)

computes arc cosine (\({\small\arccos{x} }\)arccos(x)) 
(function)

atanatanfatanl

(C99)(C99)

computes arc tangent (\({\small\arctan{x} }\)arctan(x)) 
(function)

atan2atan2fatan2l

(C99)(C99)

computes arc tangent, using signs to determine quadrants 
(function)

#### Hyperbolic functions 

sinhsinhfsinhl

(C99)(C99)

computes hyperbolic sine (\({\small\sinh{x} }\)sinh(x)) 
(function)

coshcoshfcoshl

(C99)(C99)

computes hyperbolic cosine (\({\small\cosh{x} }\)cosh(x)) 
(function)

tanhtanhftanhl

(C99)(C99)

computes hyperbolic tangent (\({\small\tanh{x} }\)tanh(x)) 
(function)

asinhasinhfasinhl

(C99)(C99)(C99)

computes inverse hyperbolic sine (\({\small\operatorname{arsinh}{x} }\)arsinh(x)) 
(function)

acoshacoshfacoshl

(C99)(C99)(C99)

computes inverse hyperbolic cosine (\({\small\operatorname{arcosh}{x} }\)arcosh(x)) 
(function)

atanhatanhfatanhl

(C99)(C99)(C99)

computes inverse hyperbolic tangent (\({\small\operatorname{artanh}{x} }\)artanh(x)) 
(function)

#### Error and gamma functions 

erferfferfl

(C99)(C99)(C99)

computes error function 
(function)

erfcerfcferfcl

(C99)(C99)(C99)

computes complementary error function 
(function)

tgammatgammaftgammal

(C99)(C99)(C99)

computes gamma function 
(function)

lgammalgammaflgammal

(C99)(C99)(C99)

computes natural (base-e) logarithm of the gamma function 
(function)

#### Nearest integer floating-point operations 

ceilceilfceill

(C99)(C99)

computes smallest integer not less than the given value 
(function)

floorfloorffloorl

(C99)(C99)

computes largest integer not greater than the given value 
(function)

trunctruncftruncl

(C99)(C99)(C99)

rounds to nearest integer not greater in magnitude than the given value 
(function)

roundroundfroundllroundlroundflroundlllroundllroundfllroundl

(C99)(C99)(C99)(C99)(C99)(C99)(C99)(C99)(C99)

rounds to nearest integer, rounding away from zero in halfway cases 
(function)

nearbyintnearbyintfnearbyintl

(C99)(C99)(C99)

rounds to an integer using current rounding mode 
(function)

rintrintfrintllrintlrintflrintlllrintllrintfllrintl

(C99)(C99)(C99)(C99)(C99)(C99)(C99)(C99)(C99)

rounds to an integer using current rounding mode with 
exception if the result differs 
(function)

#### Floating-point manipulation functions 

frexpfrexpffrexpl

(C99)(C99)

breaks a number into significand and a power of 2 
(function)

ldexpldexpfldexpl

(C99)(C99)

multiplies a number by 2 raised to a power 
(function)

modfmodffmodfl

(C99)(C99)

breaks a number into integer and fractional parts 
(function)

scalbnscalbnfscalbnlscalblnscalblnfscalblnl

(C99)(C99)(C99)(C99)(C99)(C99)

computes efficiently a number times FLT_RADIX raised to a power 
(function)

ilogbilogbfilogbl

(C99)(C99)(C99)

extracts exponent of the given number 
(function)

logblogbflogbl

(C99)(C99)(C99)

extracts exponent of the given number 
(function)

nextafternextafterfnextafterlnexttowardnexttowardfnexttowardl

(C99)(C99)(C99)(C99)(C99)(C99)

determines next representable floating-point value towards the given value 
(function)

copysigncopysignfcopysignl

(C99)(C99)(C99)

produces a value with the magnitude of a given value and the sign of another given value 
(function)

#### Classification and comparison 

fpclassify

(C99)

classifies the given floating-point value 
(function macro)

isfinite

(C99)

checks if the given number has finite value 
(function macro)

isinf

(C99)

checks if the given number is infinite 
(function macro)

isnan

(C99)

checks if the given number is NaN 
(function macro)

isnormal

(C99)

checks if the given number is normal 
(function macro)

signbit

(C99)

checks if the given number is negative 
(function macro)

isgreater

(C99)

checks if the first floating-point argument is greater than the second 
(function macro)

isgreaterequal

(C99)

checks if the first floating-point argument is greater or equal than the second 
(function macro)

isless

(C99)

checks if the first floating-point argument is less than the second 
(function macro)

islessequal

(C99)

checks if the first floating-point argument is less or equal than the second 
(function macro)

islessgreater

(C99)

checks if the first floating-point argument is less or greater than the second 
(function macro)

isunordered

(C99)

checks if two floating-point values are unordered 
(function macro)

### References

- C23 standard (ISO/IEC 9899:2024): 

- 7.8 Format conversion of integer types <inttypes.h> (p: TBD)

- 7.12 Mathematics <math.h> (p: TBD)

- 7.22 General utilities <stdlib.h> (p: TBD)

- 7.31.5 Format conversion of integer types <inttypes.h> (p: TBD)

- 7.31.12 General utilities <stdlib.h> (p: TBD)

- C17 standard (ISO/IEC 9899:2018): 

- 7.8 Format conversion of integer types <inttypes.h> (p: 158-160)

- 7.12 Mathematics <math.h> (p: 169-190)

- 7.22 General utilities <stdlib.h> (p: 248-262)

- 7.31.5 Format conversion of integer types <inttypes.h> (p: 332)

- 7.31.12 General utilities <stdlib.h> (p: 333)

- C11 standard (ISO/IEC 9899:2011): 

- 7.8 Format conversion of integer types <inttypes.h> (p: 217-220)

- 7.12 Mathematics <math.h> (p: 231-261)

- 7.22 General utilities <stdlib.h> (p: 340-360)

- 7.31.5 Format conversion of integer types <inttypes.h> (p: 455)

- 7.31.12 General utilities <stdlib.h> (p: 456)

- C99 standard (ISO/IEC 9899:1999): 

- 7.8 Format conversion of integer types <inttypes.h> (p: 198-201)

- 7.12 Mathematics <math.h> (p: 212-242)

- 7.20 General utilities <stdlib.h> (p: 306-324)

- 7.26.4 Format conversion of integer types <inttypes.h> (p: 401)

- 7.26.10 General utilities <stdlib.h> (p: 402)

- C89/C90 standard (ISO/IEC 9899:1990): 

- 4.5 MATHEMATICS <math.h> 

- 4.10 GENERAL UTILITIES <stdlib.h> 

- 4.13.4 Mathematics <math.h> 

- 7.13.7 General utilities <stdlib.h> 

### See also

C++ documentation for Common mathematical functions