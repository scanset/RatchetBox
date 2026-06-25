#include "core/Warehouse.h"
#include "core/Picker.h"
#include <iostream>
#include <vector>
#include <thread>

int main() {
    core::Warehouse warehouse;
    warehouse.AddItem(core::Item(1, "Item1", 100));
    warehouse.AddItem(core::Item(2, "Item2", 100));
    warehouse.AddItem(core::Item(3, "Item3", 100));

    std::vector<std::thread> threads;
    std::vector<int> results(4);
    for (int i = 0; i < 4; ++i) {
        threads.emplace_back([&warehouse, &results, i] {
            results[i] = core::Picker::Run(warehouse, 1, 50);
        });
    }

    for (auto& t : threads) {
        t.join();
    }

    int total = 0;
    for (int result : results) {
        total += result;
    }
    std::cout << "Total reserved: " << total << "\n";

    std::cout << "Final quantities:\n";
    std::cout << "Item 1: " << warehouse.QuantityOf(1) << "\n";
    std::cout << "Item 2: " << warehouse.QuantityOf(2) << "\n";
    std::cout << "Item 3: " << warehouse.QuantityOf(3) << "\n";

    return 0;
}