#pragma once

#include <initializer_list>
#include <algorithm>
#include <iostream>
#include <deque>

class Deque {
public:
    Deque() = default;
    Deque(const Deque& rhs) = default;
    Deque(Deque&& rhs) = default;
    explicit Deque(size_t size)
        : BlocksSize_(1 + size/BLOCK_SIZE)
        , Blocks_(BlocksSize_)
    {
        HeadPtr_ = Blocks_[0];
        TailPtr_ = Blocks_.back();

        HeadOffset_ = 0;
        TailOffset_ = BLOCK_SIZE;
    }

    Deque(std::initializer_list<int> list)
        : BlocksSize_(1 + list.size()/BLOCK_SIZE)
        , Blocks_(BlocksSize_)
    {
        for (int obj : list) {
            PushBack(obj);
        }
    }

    Deque& operator=(Deque rhs) {
        Swap(rhs);
        return *this;
    }

    void Swap(Deque& rhs) {
        std::swap(data_, rhs.data_);
    }

    void PushBack(int value) {
        data_.push_back(value);
    }

    void PopBack() {
        data_.pop_back();
    }

    void PushFront(int value) {
        data_.push_front(value);
    }

    void PopFront() {
        data_.pop_front();
    }

    int& operator[](size_t ind) {
        return data_[ind];
    }

    int operator[](size_t ind) const {
        return data_[ind];
    }

    size_t Size() const {
        return data_.size();
    }

    void Clear() {
        data_.clear();
    }

private:
    constexpr static size_t BLOCK_SIZE = 512;

    std::vector<std::shared_ptr<int[BLOCK_SIZE]>> Blocks_;
    std::shared_ptr<int[BLOCK_SIZE]> HeadPtr_;
    std::shared_ptr<int[BLOCK_SIZE]> TailPtr_;
    size_t HeadOffset_;
    size_t TailOffset_;
    size_t BlocksSize_;
};
