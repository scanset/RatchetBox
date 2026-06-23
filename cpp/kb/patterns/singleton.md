# Singleton (C++ design pattern)

## Singleton

Ensure a class only has one instance, and provide a global point of access to it.
Pattern has creational purpose and deals with object relationships, which are more 
dynamic. The Singleton is often used as a part another design patterns (see [Façade] 
and [Flyweight]). 

### When to use

* there must be exactly one instance of a class, and it must be accessible to clients from a well-known access point
* when the sole instance should be extensible by subclassing, and clients should be able to use an extended instance without modifying their code

[Façade]: https://github.com/JakubVojvoda/design-patterns-cpp/tree/master/facade
[Flyweight]: https://github.com/JakubVojvoda/design-patterns-cpp/tree/master/flyweight

## Example (compiles)

```cpp
/*
 * C++ Design Patterns: Singleton
 * Author: Jakub Vojvoda [github.com/JakubVojvoda]
 * 2016
 *
 * Source code is licensed under MIT License
 * (for more details see LICENSE)
 *
 */

#include <iostream>

/*
 * Singleton
 * has private static variable to hold one instance of the class
 * and method which gives us a way to instantiate the class
 */
class Singleton
{
public:
  // The copy constructor and assignment operator
  // are defined as deleted, which means that you
  // can't make a copy of singleton.
  //
  // Note: you can achieve the same effect by declaring
  // the constructor and the operator as private
  Singleton( Singleton const& ) = delete;
  Singleton& operator=( Singleton const& ) = delete;

  static Singleton* get()
  {
    if ( !instance )
    {
      instance = new Singleton();
    }    
    return instance;
  }
  
  static void restart()
  {
    if ( instance )
    {
      delete instance;
    }
  }
  
  void tell()
  {
    std::cout << "This is Singleton." << std::endl;
    // ...
  }
  // ...

private:
  Singleton() {}
  static Singleton *instance;
  // ...
};

Singleton* Singleton::instance = nullptr;


int main()
{
  Singleton::get()->tell();
  Singleton::restart();
  
  return 0;
}
```
