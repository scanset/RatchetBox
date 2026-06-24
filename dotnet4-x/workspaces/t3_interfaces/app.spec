name: Shapes
intent: an interface with multiple implementations, used polymorphically
behavior:
  - an interface IShape with a double Area() method and a string Name() method
  - classes Circle and Rectangle that implement IShape
  - Main builds a list of IShape holding a circle and a rectangle, then prints each shape's name and area on its own line
constraints: C# 5, single file, no external packages
