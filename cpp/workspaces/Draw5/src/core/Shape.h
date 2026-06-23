#pragma once
// generated from spec node: abstract Shape
#include <string>

class Shape {
public:
    virtual double area() = 0;
    virtual std::string name() = 0;
    virtual ~Shape() = default;
};
