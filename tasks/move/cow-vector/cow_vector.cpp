#include "cow_vector.h"

COWVector::COWVector() {
    State_ = new State();
};

COWVector::~COWVector() noexcept {
    if (State_->RefCount == 1) {
        delete State_;
    }
};

COWVector::COWVector(const COWVector& other) {
    State_ = other.State_;
    ++State_->RefCount;
}

COWVector::COWVector(COWVector&& other) noexcept {
    State_ = other.State_;
    other.State_ = new State();
}

COWVector& COWVector::operator=(const COWVector& other) {
    if (this == &other) { return *this; }

    ProcessDecrementRef();
    State_ = other.State_;
    ++State_->RefCount;

    return *this;
}

COWVector& COWVector::operator=(COWVector&& other) noexcept {
    if (this == &other) { return *this; }

    ProcessDecrementRef();
    State_ = other.State_;
    other.State_ = new State();

    return *this;
}

size_t COWVector::Size() const { return State_->Vector.size(); }

void COWVector::Resize(size_t size) {
    EnsureUnique();
    State_->Vector.resize(size);
}

const std::string& COWVector::Get(size_t at) const { return State_->Vector[at]; }

const std::string& COWVector::Back() const { return State_->Vector.back(); }

void COWVector::PushBack(const std::string& value) {
    EnsureUnique();
    State_->Vector.push_back(value);
}

void COWVector::Set(size_t at, const std::string& value) {
    EnsureUnique();
    State_->Vector[at] = value;
}


void COWVector::EnsureUnique() {
    if (State_->RefCount > 1) {
        DeepCopy();
    }
}

void COWVector::DeepCopy() {
    State* newState = new State(State_->Vector);
    ProcessDecrementRef();
    State_ = newState;
}

void COWVector::ProcessDecrementRef() {
    --State_->RefCount;
    if (State_->RefCount == 0) {
        delete State_;
    }
}
