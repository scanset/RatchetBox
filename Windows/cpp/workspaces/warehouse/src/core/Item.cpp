#include "Item.h"

namespace core {
    Item::Item(int id, const std::string& name, int quantity)
        : id_(id), name_(name), quantity_(quantity) {}

    int Item::getId() const {
        return id_;
    }

    const std::string& Item::getName() const {
        return name_;
    }

    int Item::getQuantity() const {
        return quantity_;
    }

    void Item::setQuantity(int quantity) {
        quantity_ = quantity;
    }
} // namespace core
