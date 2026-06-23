#pragma once
// generated from spec node: class Rectangle
#include <string>
#include "Shape.h"

class Rectangle : public Shape {
public:
    double width{};
    double height{};
    Rectangle(double width, double height) : width(width), height(height) {}
    virtual double area() override { return width * height; }
    virtual std::string name() override { return "rectangle"; }
    virtual ~Rectangle() = default;
};