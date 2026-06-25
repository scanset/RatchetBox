# Flyweight (C++ design pattern)

## Flyweight

Flyweight pattern has has structural purpose, applies to objects and uses sharing to support 
large numbers of fine-grained objects efficiently. The pattern can be used to reduce 
memory usage when you need to create a large number of similar objects.

### When to use

* when one instance of a class can be used to provide many "virtual instances"
* when all of the following are true
 * an application uses a large number of objects
 * storage costs are high because of the sheer quantity of objects
 * most object state can be made extrinsic
 * many groups of objects may be replaced by relatively few shared objects once extrinsic state is removed
 * the application doesn't depend on object identity

## Example (compiles)

```cpp
/*
 * C++ Design Patterns: Flyweight
 * Author: Jakub Vojvoda [github.com/JakubVojvoda]
 * 2016
 *
 * Source code is licensed under MIT License
 * (for more details see LICENSE)
 *
 */

#include <iostream>
#include <map>

/*
 * Flyweight
 * declares an interface through which flyweights can receive
 * and act on extrinsic state
 */
class Flyweight
{
public:
  virtual ~Flyweight() {}
  virtual void operation() = 0;
  // ...
};

/*
 * UnsharedConcreteFlyweight
 * not all subclasses need to be shared
 */
class UnsharedConcreteFlyweight : public Flyweight
{
public:
  UnsharedConcreteFlyweight( const int intrinsic_state ) :
    state( intrinsic_state ) {}
  
  ~UnsharedConcreteFlyweight() {}
  
  void operation()
  {
    std::cout << "Unshared Flyweight with state " << state << std::endl;
  }
  // ...
  
private:
  int state;
  // ...
};

/*
 * ConcreteFlyweight
 * implements the Flyweight interface and adds storage
 * for intrinsic state
 */
class ConcreteFlyweight : public Flyweight
{
public:
  ConcreteFlyweight( const int all_state ) :
    state( all_state ) {}
  
  ~ConcreteFlyweight() {}
  
  void operation()
  {
    std::cout << "Concrete Flyweight with state " << state << std::endl;
  }
  // ...
  
private:
  int state;
  // ...
};

/*
 * FlyweightFactory
 * creates and manages flyweight objects and ensures
 * that flyweights are shared properly
 */
class FlyweightFactory
{
public:
  ~FlyweightFactory()
  {
    for ( auto it = flies.begin(); it != flies.end(); it++ )
    {
        delete it->second;
    }
    flies.clear();
  }
  
  Flyweight *getFlyweight( const int key )
  {
    if ( flies.find( key ) != flies.end() )
    {
      return flies[ key ];
    }
    Flyweight *fly = new ConcreteFlyweight( key );
    flies.insert( std::pair<int, Flyweight *>( key, fly ) );
    return fly;
  }
  // ...

private:
  std::map<int, Flyweight*> flies;
  // ...
};


int main()
{
  FlyweightFactory *factory = new FlyweightFactory;
  factory->getFlyweight(1)->operation();
  factory->getFlyweight(2)->operation();
  delete factory;
  return 0;
}
```
