#include <iostream>
#include <string>
#include <sstream>

int main() {
    std::string line;
    std::getline(std::cin, line);
    
    int a, b;
    char op;
    
    // Parse the input line
    // Expected format: "a b op" where a and b are integers and op is one of + - * /
    // We'll use stringstream for parsing
    std::istringstream iss(line);
    if (!(iss >> a >> b >> op)) {
        return 1; // Error parsing input
    }
    
    switch (op) {
        case '+':
            std::cout << (a + b) << std::endl;
            break;
        case '-':
            std::cout << (a - b) << std::endl;
            break;
        case '*':
            std::cout << (a * b) << std::endl;
            break;
        case '/':
            if (b == 0) {
                std::cout << "error: divide by zero" << std::endl;
            } else {
                std::cout << (a / b) << std::endl;
            }
            break;
        default:
            return 1; // Invalid operator
    }
    
    return 0;
}