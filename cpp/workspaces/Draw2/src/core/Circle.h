#pragma once
// generated from spec node: class Circle
#include <string>
#include "Shape.h"

class Circle : public Shape {
public:
    double radius{};
    Circle(double radius) : radius(radius) {}
    virtual double area() override { return 3.14159265358979323846 * radius * radius; }  // TODO: return PI * radius * radius
    virtual std::string name() override { return "circle"; }  // TODO: return circle
    virtual ~Circle() = default;
};