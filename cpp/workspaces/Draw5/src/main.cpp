#include "core/Shape.h"
#include "core/Circle.h"
#include "core/Rectangle.h"
#include "core/Triangle.h"
#include <iostream>
#include <memory>
#include <vector>

int main() {
    // TODO: implement op render_all
    //   uses: Shape, Circle, Rectangle, Triangle
    //   step: for each Shape* s in list: print s.name() and s.area()
    std::vector<std::unique_ptr<Shape>> shapes;
    shapes.push_back(std::make_unique<Circle>(5.0));
    shapes.push_back(std::make_unique<Rectangle>(4.0, 6.0));
    shapes.push_back(std::make_unique<Triangle>(3.0, 4.0));

    for (const auto& s : shapes) {
        std::cout << s->name() << " " << s->area() << std::endl;
    }
    return 0;
}