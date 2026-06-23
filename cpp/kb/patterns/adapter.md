# Adapter (C++ design pattern)

## Adapter

Convert the interface of a class into another interface the clients expect.
Adapter lets classes work together that couldn't otherwise because of
incompatible interfaces, ie. allows to use a client with an incompatible 
interface by an Adapter that does the conversion. Adapter has structural purpose
and can be applied on classes and also on object. A class adapter uses multiple 
inheritance to adapt one interface to another and the object adapter uses object 
composition to combine classes with different interfaces.

### When to use

* you want to use an existing class, and its interface does not match the one you need
* you want to create a reusable class that cooperates with classes that don't necessarily have compatible interfaces

## Example (compiles)

```cpp
/*
 * C++ Design Patterns: Adapter (Class scope)
 * Author: Jakub Vojvoda [github.com/JakubVojvoda]
 * 2016
 *
 * Source code is licensed under MIT License
 * (for more details see LICENSE)
 *
 */

#include <iostream>

/*
 * Target
 * defines specific interface that Client uses
 */
class Target
{
public:
  virtual ~Target() {}
  
  virtual void request() = 0;
  // ...
};

/*
 * Adaptee
 * all requests get delegated to the Adaptee which defines
 * an existing interface that needs adapting
 */
class Adaptee
{
public:
  ~Adaptee() {}
  
  void specificRequest()
  {
    std::cout << "specific request" << std::endl;
  }
  // ...
};

/*
 * Adapter
 * implements the Target interface and lets the Adaptee respond
 * to request on a Target by extending both classes
 * ie adapts the interface of Adaptee to the Target interface
 */
class Adapter : public Target, private Adaptee
{
public:
  virtual void request()
  {
    specificRequest();
  }
  // ...
};


int main()
{
  Target *t = new Adapter();
  t->request();
  delete t;
  
  return 0;
}
```
