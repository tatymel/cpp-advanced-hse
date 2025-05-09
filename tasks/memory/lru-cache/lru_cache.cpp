#include "lru_cache.h"

LruCache::LruCache(size_t Capacity_) : Capacity_(Capacity_) {
}

void LruCache::Set(const std::string& key, const std::string& value) {
    auto it = Cache_.find(key);

    if (it == Cache_.end()) {
        if (OrderUsage_.size() == Capacity_) {
            Cache_.erase(OrderUsage_.front());
            OrderUsage_.pop_front();
        }

        OrderUsage_.push_back(key);
        Cache_[key] = {value, --OrderUsage_.end()};
    } else {
        it->second.Value = value;
        MoveToBack(it);
    }

}

bool LruCache::Get(const std::string& key, std::string* value) {
    auto it = Cache_.find(key);
    if (it == Cache_.end()) {
        return false;
    }
    *value = it->second.Value;
    MoveToBack(it);
    return true;
}

void LruCache::MoveToBack(std::unordered_map<std::string, Entry>::iterator it) {
    OrderUsage_.erase(it->second.IteratorList);
    OrderUsage_.push_back(it->first);
    it->second.IteratorList = --OrderUsage_.end();
}