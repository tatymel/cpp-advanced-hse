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
    COWVector() {
        State_ = new State();
    };
    ~COWVector() noexcept {
        if (State_->RefCount == 1) {
            delete State_;
        }
    };

    COWVector(const COWVector& other) {
        State_ = other.State_;
        ++State_->RefCount;
    }

    COWVector(COWVector&& other) noexcept {
        State_ = other.State_;
        other.State_ = new State();
    }

    COWVector& operator=(const COWVector& other) {
        if (this == &other) { return *this; }

        ProcessDecrementRef();
        State_ = other.State_;
        ++State_->RefCount;

        return *this;
    }

    COWVector& operator=(COWVector&& other) noexcept {
        if (this == &other) { return *this; }

        ProcessDecrementRef();
        State_ = other.State_;
        other.State_ = new State();

        return *this;
    }

    size_t Size() const { return State_->Vector.size(); }

    void Resize(size_t size) {
        EnsureUnique();
        State_->Vector.resize(size);
    }

    const std::string& Get(size_t at) const { return State_->Vector[at]; }

    const std::string& Back() const { return State_->Vector.back(); }

    void PushBack(const std::string& value) {
        EnsureUnique();
        State_->Vector.push_back(value);
    }

    void Set(size_t at, const std::string& value) {
        EnsureUnique();
        State_->Vector[at] = value;
    }

private:
    void EnsureUnique() {
        if (State_->RefCount > 1) {
            DeepCopy();
        }
    }

    void DeepCopy() {
        State* newState = new State(State_->Vector);
        ProcessDecrementRef();
        State_ = newState;
    }

    void ProcessDecrementRef() {
        --State_->RefCount;
        if (State_->RefCount == 0) {
            delete State_;
        }
    }

private:
    State* State_;
};
