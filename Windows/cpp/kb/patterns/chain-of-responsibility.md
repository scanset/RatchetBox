# Chain of Responsibility (C++ design pattern)

## Chain of Responsibility

Chain of Responsibility pattern avoids coupling the sender of a request to its receiver 
by giving more than one object a chance to handle the request. The pattern chains 
the receiving objects and passes the request along the chain until an object handles it. 
It has a behavioral purpose and deals with relationships between objects. 

### When to use

* more than one object may handle a request, and the handler should be ascertained automatically
* you want to issue a request to one of several objects without specifying the receiver explicitly
* the set of objects that can handle a request should be specified dynamically

## Example (compiles)

```cpp
/*
 * C++ Design Patterns: Chain of Responsibility
 * Author: Jakub Vojvoda [github.com/JakubVojvoda]
 * 2016
 *
 * Source code is licensed under MIT License
 * (for more details see LICENSE)
 *
 */
#include <iostream>

/*
 * Handler
 * defines an interface for handling requests and
 * optionally implements the successor link
 */
class Handler
{
public:
  virtual ~Handler() {}
  
  virtual void setHandler( Handler *s )
  {
    successor = s;
  }
  
  virtual void handleRequest()
  {
    if (successor != 0)
    {
      successor->handleRequest();
    }
  }
  // ...

private:
  Handler *successor;
};

/*
 * Concrete Handlers
 * handle requests they are responsible for
 */
class ConcreteHandler1 : public Handler
{
public:
  ~ConcreteHandler1() {}
  
  bool canHandle()
  {
    // ...
    return false;
  }
  
  virtual void handleRequest()
  {
    if ( canHandle() )
    {
      std::cout << "Handled by Concrete Handler 1" << std::endl;
    }
    else
    {
      std::cout << "Cannot be handled by Handler 1" << std::endl;
      Handler::handleRequest();
    }
    // ...
  }
  // ...
};

class ConcreteHandler2 : public Handler
{
public:
  ~ConcreteHandler2() {}
  
  bool canHandle()
  {
    // ...
    return true;
  }
  
  virtual void handleRequest()
  {
    if ( canHandle() )
    {
      std::cout << "Handled by Handler 2" << std::endl;
    }
    else
    {
      std::cout << "Cannot be handled by Handler 2" << std::endl;
      Handler::handleRequest();
    }
    // ...
  }
  
  // ...
};


int main()
{
  ConcreteHandler1 handler1;
  ConcreteHandler2 handler2;
  
  handler1.setHandler( &handler2 );
  handler1.handleRequest();
  
  return 0;
}
```
