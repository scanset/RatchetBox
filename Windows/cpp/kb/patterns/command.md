# Command (C++ design pattern)

## Command

Command pattern encapsulates a request as an object, thereby letting you parameterize
clients with different requests, queue or log requests, and supports undoable
operations. The pattern has a behavioral purpose and deals with relationships between objects. 

### When to use

* want to parameterize objects by an action to perform
* want to specify, queue, and execute requests at different times
* support undo
* support logging changes so that they can be reapplied in case of a system crash
* structure a system around high-level operations built on primitives operations

## Example (compiles)

```cpp
/*
 * C++ Design Patterns: Command
 * Author: Jakub Vojvoda [github.com/JakubVojvoda]
 * 2016
 *
 * Source code is licensed under MIT License
 * (for more details see LICENSE)
 *
 */

#include <iostream>

/*
 * Receiver
 * knows how to perform the operations associated
 * with carrying out a request
 */
class Receiver
{
public:
  void action()
  {
    std::cout << "Receiver: execute action" << std::endl;
  }
  // ...
};

/*
 * Command
 * declares an interface for all commands
 */
class Command
{
public:
  virtual ~Command() {}
  virtual void execute() = 0;
  // ...

protected:
  Command() {}
};

/*
 * Concrete Command
 * implements execute by invoking the corresponding
 * operation(s) on Receiver
 */
class ConcreteCommand : public Command
{
public:
  ConcreteCommand( Receiver *r ) : receiver( r ) {}
  
  ~ConcreteCommand()
  {
    if ( receiver )
    {
      delete receiver;
    }
  }
  
  void execute()
  {
    receiver->action();
  }
  // ...
  
private:
  Receiver *receiver;
  // ...
};

/*
 * Invoker
 * asks the command to carry out the request
 */
class Invoker
{
public:
  void set( Command *c )
  {
    command = c;
  }
  
  void confirm()
  {
    if ( command )
    {
      command->execute();  
    }
  }
  // ...

private:
  Command *command;
  // ...
};


int main()
{
  ConcreteCommand command( new Receiver() );
  
  Invoker invoker;
  invoker.set( &command );
  invoker.confirm();
  
  return 0;
}
```
