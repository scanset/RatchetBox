#include "core/Shape.h"
#include "core/Circle.h"
#include "core/Rectangle.h"
#include "core/Triangle.h"
#include <vector>
#include <memory>
#include <iostream>

// ops to implement: render_all
int main() {
    std::vector<std::unique_ptr<Shape>> shapes;
    shapes.push_back(std::make_unique<Circle>(2.0));
    shapes.push_back(std::make_unique<Rectangle>(3.0, 4.0));
    shapes.push_back(std::make_unique<Triangle>(6.0, 2.0));

    for (const auto& shape : shapes) {
        std::cout << shape->name() << " " << shape->area() << std::endl;
    }

    return 0;
}