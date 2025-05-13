#pragma once

#include <cstdint>
#include <string>
#include <vector>

struct State {
    State() : RefCount(1) { }
    State(const std::vector<std::string>& vector) : RefCount(1), Vector(vector) { }

    State(const State&) = delete;
    State& operator=(const State&) = delete;

    int RefCount;
    std::vector<std::string> Vector;
};

class COWVector {
public:
    COWVector();
    ~COWVector() noexcept;

    COWVector(const COWVector& other);
    COWVector& operator=(const COWVector& other);

    COWVector(COWVector&& other) noexcept;
    COWVector& operator=(COWVector&& other) noexcept;

    size_t Size() const;

    void Resize(size_t size);

    const std::string& Get(size_t at) const;
    const std::string& Back() const;

    void PushBack(const std::string& value);

    void Set(size_t at, const std::string& value);

private:
    void EnsureUnique();
    void DeepCopy();
    void ProcessDecrementRef();

private:
    State* State_;
};
