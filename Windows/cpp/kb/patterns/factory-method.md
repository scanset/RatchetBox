# Factory Method (C++ design pattern)

## Factory Method

Define an interface for creating an object, but let subclasses decide which class to instantiate. 
Factory Method lets a class defer instantiation to subclasses. The pattern has creational purpose
and applies to classes where deals with relationships through inheritence ie. they are static-fixed 
at compile time. In contrast to Abstract Factory, Factory Method contain method to produce only one
type of product.  

### When to use

* a class cant anticipate the class of objects it must create
* a class wants its subclasses to specify the objects it creates
* classes delegate responsibility to one of several helper subclasses, and you want to localize the knowledge of which helper subclass is the delegate

## Example (compiles)

```cpp
/*
 * C++ Design Patterns: Factory Method
 * Author: Jakub Vojvoda [github.com/JakubVojvoda]
 * 2016
 *
 * Source code is licensed under MIT License
 * (for more details see LICENSE)
 *
 */

#include <iostream>
#include <string>

/*
 * Product
 * products implement the same interface so that the classes can refer
 * to the interface not the concrete product
 */
class Product
{
public:
  virtual ~Product() {}
  
  virtual std::string getName() = 0;
  // ...
};

/*
 * Concrete Product
 * define product to be created
 */
class ConcreteProductA : public Product
{
public:
  ~ConcreteProductA() {}
  
  std::string getName()
  {
    return "type A";
  }
  // ...
};

/*
 * Concrete Product
 * define product to be created
 */
class ConcreteProductB : public Product
{
public:
  ~ConcreteProductB() {}
  
  std::string getName()
  {
    return "type B";
  }
  // ...
};

/*
 * Creator
 * contains the implementation for all of the methods
 * to manipulate products except for the factory method
 */
class Creator
{
public:
  virtual ~Creator() {}
  
  virtual Product* createProductA() = 0;
  virtual Product* createProductB() = 0;
  
  virtual void removeProduct( Product *product ) = 0;
  
  // ...
};

/*
 * Concrete Creator
 * implements factory method that is responsible for creating
 * one or more concrete products ie. it is class that has
 * the knowledge of how to create the products
 */
class ConcreteCreator : public Creator
{
public:
  ~ConcreteCreator() {}
  
  Product* createProductA()
  {
    return new ConcreteProductA();
  }
  
  Product* createProductB()
  {
    return new ConcreteProductB();
  }
  
  void removeProduct( Product *product )
  {
    delete product;
  }
  // ...
};


int main()
{
  Creator *creator = new ConcreteCreator();
  
  Product *p1 = creator->createProductA();
  std::cout << "Product: " << p1->getName() << std::endl;
  creator->removeProduct( p1 );
  
  Product *p2 = creator->createProductB();
  std::cout << "Product: " << p2->getName() << std::endl;
  creator->removeProduct( p2 );
  
  delete creator;
  return 0;
}
```
