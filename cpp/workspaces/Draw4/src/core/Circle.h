#pragma once
// generated from spec node: class Circle
#include <string>
#include <cmath>
#include "Shape.h"

class Circle : public Shape {
public:
    double radius{};
    Circle(double radius) : radius(radius) {}
    virtual double area() override { return M_PI * radius * radius; }
    virtual std::string name() override { return "circle"; }
    virtual ~Circle() = default;
};