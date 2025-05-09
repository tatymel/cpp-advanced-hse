#pragma once

#include <string>
#include <unordered_map>
#include <list>

class LruCache {
private:
    struct Entry;

public:
    LruCache(size_t Capacity_);

    void Set(const std::string& key, const std::string& value);

    bool Get(const std::string& key, std::string* value);

private:
    void MoveToBack(std::unordered_map<std::string, Entry>::iterator it);

private:
    struct Entry {
        std::string Value;
        std::list<std::string>::iterator IteratorList;
    };

    const size_t Capacity_;

    std::unordered_map<std::string, Entry> Cache_;
    std::list<std::string> OrderUsage_;
};
