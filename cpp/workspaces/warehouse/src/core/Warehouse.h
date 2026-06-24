#pragma once
#include <map>
#include <mutex>
#include <memory>
#include "Item.h"

namespace core {
    class Warehouse {
    public:
        Warehouse();
        ~Warehouse();

        void AddItem(const Item& item);
        bool Reserve(int id, int count);
        int QuantityOf(int id) const;

    private:
        mutable std::mutex mutex_;
        std::map<int, Item> items_;
    };
} // namespace core
