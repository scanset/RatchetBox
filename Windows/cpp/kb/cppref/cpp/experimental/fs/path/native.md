const value_type* c_str() const;

(1)
(filesystem TS)

const string_type& native() const;

(2)
(filesystem TS)

operator string_type() const;

(3)
(filesystem TS)

Accesses the native path name as a character string.

1) Equivalent to native().c_str().

2) Returns the native string representation of the pathname by reference.

3) Returns the native string representation of the pathname by value.

### Parameters

(none)

### Return value

The native string representation of the pathname, using native syntax, native character type, and native character encoding. This string is suitable for use with OS APIs.

### Exceptions

1,2) noexcept specification:  noexcept

### Notes

The conversion function (3) is provided so that standard file-opening APIs that accept std::basic_string file names, such as the std::ifstream constructor, can use pathnames with no changes to code:

fs::path p = "/tmp/text.txt";
std::ifstream f(p);

### Example

Run this code

#include <clocale>
#include <cstdio>
#include <experimental/filesystem>
#include <fstream>
#include <iostream>
namespace fs = std::experimental::filesystem;
 
int main()
{
std::setlocale(LC_ALL, "en_US.utf8");
std::locale::global(std::locale("en_US.utf8"));
 
fs::path p = fs::u8path(u8"要らない.txt");
 
// native string representation can be used with OS APIs
std::ofstream(p) << "File contents"; // this uses operator string()
if (std::FILE* f = std::fopen(p.c_str(), "r"))
{
int ch;
while ((ch=fgetc(f))!= EOF) putchar(ch);
std::fclose(f);
}
 
// multibyte and wide representation can be used for output
std::cout.imbue(std::locale());
std::cout << "\nFile name in narrow multibyte encoding: "
<< p.string() << '\n';
 
std::wcerr.imbue(std::locale());
std::wcerr << "File name in wide encoding: "
<< p.wstring() << '\n';
 
fs::remove(p);
}

Possible output:

File contents
File name in narrow multibyte encoding: 要らない.txt
File name in wide encoding: 要らない.txt

### See also

stringwstringu8stringu16stringu32string

returns the path in native pathname format converted to a string 
(public member function)

generic_stringgeneric_wstringgeneric_u8stringgeneric_u16stringgeneric_u32string

returns the path in generic pathname format converted to a string 
(public member function)