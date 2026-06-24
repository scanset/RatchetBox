#include "Warehouse.h"
#include <algorithm>

namespace core {
    Warehouse::Warehouse() = default;

    Warehouse::~Warehouse() = default;

    void Warehouse::AddItem(const Item& item) {
        std::lock_guard<std::mutex> lock(mutex_);
        items_.insert_or_assign(item.getId(), item);
    }

    bool Warehouse::Reserve(int id, int count) {
        std::lock_guard<std::mutex> lock(mutex_);
        auto it = items_.find(id);
        if (it == items_.end() || it->second.getQuantity() < count) {
            return false;
        }
        it->second.setQuantity(it->second.getQuantity() - count);
        return true;
    }

    int Warehouse::QuantityOf(int id) const {
        std::lock_guard<std::mutex> lock(mutex_);
        auto it = items_.find(id);
        if (it == items_.end()) {
            return 0;
        }
        return it->second.getQuantity();
    }
} // namespace core
