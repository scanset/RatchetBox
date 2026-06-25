#pragma once
#include "Warehouse.h"

namespace core {
    class Picker {
    public:
        static int Run(Warehouse& warehouse, int id, int attempts);
    };
} // namespace core
