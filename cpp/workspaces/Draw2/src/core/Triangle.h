#pragma once
// generated from spec node: class Triangle
#include <string>
#include "Shape.h"

class Triangle : public Shape {
public:
    double base{};
    double height{};
    Triangle(double base, double height) : base(base), height(height) {}
    virtual double area() override { return 0.5 * base * height; }
    virtual std::string name() override { return "triangle"; }
    virtual ~Triangle() = default;
};