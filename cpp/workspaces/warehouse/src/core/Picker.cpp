#include "Picker.h"
#include <algorithm>

namespace core {
    int Picker::Run(Warehouse& warehouse, int id, int attempts) {
        int successes = 0;
        for (int i = 0; i < attempts; ++i) {
            if (warehouse.Reserve(id, 1)) {
                ++successes;
            }
        }
        return successes;
    }
} // namespace core
