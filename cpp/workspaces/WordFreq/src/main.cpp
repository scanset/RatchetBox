#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <algorithm>
#include <cctype>

int main() {
    std::map<std::string, int> wordCount;
    std::string word;

    // Read all words from stdin
    while (std::cin >> word) {
        // Convert to lowercase
        std::transform(word.begin(), word.end(), word.begin(), ::tolower);

        // Strip non-alphanumeric characters from the beginning
        while (!word.empty() && !std::isalnum(word.front())) {
            word.erase(0, 1);
        }

        // Strip non-alphanumeric characters from the end
        while (!word.empty() && !std::isalnum(word.back())) {
            word.pop_back();
        }

        // Only count non-empty words
        if (!word.empty()) {
            wordCount[word]++;
        }
    }

    // Convert map to vector for sorting
    std::vector<std::pair<std::string, int>> sortedWords(wordCount.begin(), wordCount.end());

    // Sort by count descending, then by word ascending
    std::sort(sortedWords.begin(), sortedWords.end(), [](const std::pair<std::string, int>& a, const std::pair<std::string, int>& b) {
        if (a.second != b.second) {
            return a.second > b.second; // Descending count
        }
        return a.first < b.first; // Ascending word
    });

    // Print results
    for (const auto& pair : sortedWords) {
        std::cout << pair.first << " " << pair.second << std::endl;
    }

    return 0;
}