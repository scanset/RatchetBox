name: Animals
intent: a base class with derived classes overriding behavior, used polymorphically
behavior:
  - an abstract base class Animal with a Name property and an abstract string Speak() method
  - classes Dog, Cat, and Cow that derive from Animal and override Speak
  - Main builds a list of Animal holding one of each, then prints each animal's name and what it speaks
constraints: C# 5, single file, no external packages
