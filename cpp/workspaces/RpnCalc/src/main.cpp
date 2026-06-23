#include <iostream>
#include <string>

constexpr long rpn_eval(const char* expr) {
    long stack[100] = {0};
    long* sp = stack;
    const char* p = expr;
    
    while (*p) {
        if (*p == ' ') {
            p++;
            continue;
        }
        
        if (*p >= '0' && *p <= '9') {
            long num = 0;
            while (*p >= '0' && *p <= '9') {
                num = num * 10 + (*p - '0');
                p++;
            }
            *sp++ = num;
        } else {
            long b = *(--sp);
            long a = *(--sp);
            switch (*p) {
                case '+': *sp++ = a + b; break;
                case '-': *sp++ = a - b; break;
                case '*': *sp++ = a * b; break;
                case '/': *sp++ = a / b; break;
            }
            p++;
        }
    }
    
    return *--sp;
}

static_assert(rpn_eval("3 4 +") == 7, "t1");
static_assert(rpn_eval("6 2 -") == 4, "t2");
static_assert(rpn_eval("2 3 4 * +") == 14, "t3");
static_assert(rpn_eval("5 1 2 + 4 * + 3 -") == 14, "t4");
static_assert(rpn_eval("100 10 /") == 10, "t5");

int main() {
    std::string line;
    std::getline(std::cin, line);
    std::cout << rpn_eval(line.c_str()) << std::endl;
    return 0;
}