#pragma once

#include <memory>
#include <vector>
#include <string>
#include <unordered_set>

using std::string;

std::vector<std::unique_ptr<string>> Duplicate(const std::vector<std::shared_ptr<string>>& items) {
    std::vector<std::unique_ptr<string>> duplicateItems;
    duplicateItems.reserve(items.size());

    for (auto& item : items) {
        duplicateItems.emplace_back(std::make_unique<string>(*item));
    }
    return duplicateItems;
}

std::vector<std::shared_ptr<string>> DeDuplicate(const std::vector<std::unique_ptr<string>>& items) {
    std::unordered_map<std::string_view, size_t> indexToExistingString;
    std::vector<std::shared_ptr<string>> deDuplicateItems;
    deDuplicateItems.reserve(items.size());

    for (auto& item : items) {
        std::string_view key(*item);
        auto it = indexToExistingString.find(key);

        if (it != indexToExistingString.end()) {
            deDuplicateItems.emplace_back(deDuplicateItems[it->second]);
        } else {
            auto new_item = std::make_shared<string>(std::move(*item));
            deDuplicateItems.emplace_back(new_item);
            indexToExistingString[*deDuplicateItems.back()] = deDuplicateItems.size() - 1;
        }
    }
    return deDuplicateItems;
}
