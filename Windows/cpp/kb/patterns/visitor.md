# Visitor (C++ design pattern)

## Visitor

Visitor represents an operation to be performed on the elements of an object
structure. It lets you define a new operation without changing the classes of 
the elements on which it operates. The pattern has behavioral purpose and applies 
to the objects.

### When to use

* an object structure contains many classes of objects with differing interfaces, 
and you want to perform operations on these objects that depend on their concrete classes
* many distinct and unrelated operations need to be performed on objects in an object structure, 
and you want to avoid "polluting" their classes with these operations
* the classes defining the object structure rarely change, but you often want
to define new operations over the structure

## Example (compiles)

```cpp
/*
 * C++ Design Patterns: Visitor
 * Author: Jakub Vojvoda [github.com/JakubVojvoda]
 * 2016
 *
 * Source code is licensed under MIT License
 * (for more details see LICENSE)
 *
 */

#include <iostream>

class Element;
class ConcreteElementA;
class ConcreteElementB;

/*
 * Visitor
 * declares a Visit operation for each class of ConcreteElement
 * in the object structure
 */
class Visitor
{
public:
  virtual ~Visitor() {}
  
  virtual void visitElementA( ConcreteElementA* const element ) = 0;
  virtual void visitElementB( ConcreteElementB* const element ) = 0;
  // ...
};

/*
 * Concrete Visitors
 * implement each operation declared by Visitor, which implement
 * a fragment of the algorithm defined for the corresponding class
 * of object in the structure
 */
class ConcreteVisitor1 : public Visitor
{
public:
  ~ConcreteVisitor1() {}
  
  void visitElementA( ConcreteElementA* const )
  {
    std::cout << "Concrete Visitor 1: Element A visited." << std::endl;
  }
  
  void visitElementB( ConcreteElementB* const )
  {
    std::cout << "Concrete Visitor 1: Element B visited." << std::endl;
  }
  // ...
};

class ConcreteVisitor2 : public Visitor
{
public:
  ~ConcreteVisitor2() {}
  
  void visitElementA( ConcreteElementA* const )
  {
    std::cout << "Concrete Visitor 2: Element A visited." << std::endl;
  }
  
  void visitElementB( ConcreteElementB* const )
  {
    std::cout << "Concrete Visitor 2: Element B visited." << std::endl;
  }
  // ...
};

/*
 * Element
 * defines an accept operation that takes a visitor as an argument
 */
class Element
{
public:
  virtual ~Element() {}
  
  virtual void accept( Visitor &visitor ) = 0;
  // ...
};

/*
 * Concrete Elements
 * implement an accept operation that takes a visitor as an argument
 */
class ConcreteElementA : public Element
{
public:
  ~ConcreteElementA() {}
  
  void accept( Visitor &visitor )
  {
    visitor.visitElementA( this );
  }
  // ...
};

class ConcreteElementB : public Element
{
public:
  ~ConcreteElementB() {}
  
  void accept( Visitor &visitor )
  {
    visitor.visitElementB( this );
  }
  // ...
};


int main()
{
  ConcreteElementA elementA;
  ConcreteElementB elementB;
  
  ConcreteVisitor1 visitor1;
  ConcreteVisitor2 visitor2;
  
  elementA.accept(visitor1);
  elementA.accept(visitor2);
  
  elementB.accept(visitor1);
  elementB.accept(visitor2);
  
  return 0;
}
```
