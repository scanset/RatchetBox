R operator()( Args... args ) const;

(since C++11)

Invokes the stored callable function target with the parameters args.

Effectively does INVOKE<R>(f, std::forward<Args>(args)...), where f is the target object of *this.

### Parameters

args

-

parameters to pass to the stored callable function target

### Return value

None if R is void. Otherwise the return value of the invocation of the stored callable object.

### Exceptions

Throws std::bad_function_call if *this does not store a callable function target, i.e. !*this == true.

### Example

The following example shows how std::function can be passed to other functions by value. Also, it shows how std::function can store lambdas.

Run this code

#include <functional>
#include <iostream>
 
void call(std::function<int()> f) // can be passed by value
{ 
std::cout << f() << '\n';
}
 
int normal_function()
{
return 42;
}
 
int main()
{
int n = 1;
std::function<int()> f;
try
{
call(f);
}
catch (const std::bad_function_call& ex)
{
std::cout << ex.what() << '\n';
}
 
f = [&n](){ return n; };
call(f);
 
n = 2;
call(f);
 
f = normal_function;
call(f);
 
std::function<void(std::string, int)> g;
g = [](std::string str, int i) { std::cout << str << ' ' << i << '\n'; };
g("Hi", 052);
}

Possible output:

bad_function_call
1
2
42
Hi 42

### See also

operator()

invokes the target 
(public member function of std::move_only_function)

operator()

calls the stored function 
(public member function of std::reference_wrapper<T>)

bad_function_call

(C++11)

the exception thrown when invoking an empty std::function 
(class)

invokeinvoke_r

(C++17)(C++23)

invokes any Callable object with given arguments and possibility to specify return type(since C++23) 
(function template)