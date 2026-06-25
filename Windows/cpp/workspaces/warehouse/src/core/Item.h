#pragma once
#include <string>

namespace core {
    class Item {
    public:
        Item(int id, const std::string& name, int quantity);
        int getId() const;
        const std::string& getName() const;
        int getQuantity() const;
        void setQuantity(int quantity);

    private:
        int id_;
        std::string name_;
        int quantity_;
    };
} // namespace core
