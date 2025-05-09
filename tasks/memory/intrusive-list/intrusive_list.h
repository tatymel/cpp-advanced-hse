#pragma once

#include <algorithm>
#include <iterator>
#include <iostream>

class ListHook {
public:
    ListHook() : Left_(nullptr), Right_(nullptr) { }
    ListHook(ListHook* left, ListHook* right) : Left_(left), Right_(right) { }

    bool IsLinked() const {
        return Left_ && Right_;
    }

    void Unlink() {
        if (Left_ && Right_) {
            Left_->Right_ = Right_;
            Right_->Left_ = Left_;
        }
        Right_ = Left_ = nullptr;
    }

    // Must unlink element from list
    ~ListHook() {
        Unlink();
    }

    ListHook(const ListHook&) = delete;

private:
    template <class T>
    friend class List;

    // that helper function might be useful
    void LinkBefore(ListHook* other) {
        Left_ = other->Left_;
        other->Left_->Right_ = this;
        other->Left_ = this;
        Right_ = other;
    }

    ListHook* Left_;
    ListHook* Right_;
};

template <typename T>
class List {
public:
    class Iterator {
        using IteratorTag = std::bidirectional_iterator_tag;
    public:
        typedef T           value_type;
        typedef ptrdiff_t   difference_type;
        typedef T*          pointer;
        typedef T&          reference;
        typedef IteratorTag iterator_category;

        Iterator(ListHook* cur) : Cur_(cur) {}

        Iterator& operator++() {
            Cur_ = Cur_->Right_;
            return *this;
        }

        Iterator operator++(int) {
            Cur_ = Cur_->Right_;
            return Iterator(Cur_->Left_);
        }

        T& operator*() const {
            return *static_cast<value_type*>(Cur_);
        }

        T* operator->() const {
            return static_cast<value_type*>(Cur_);
        }

        bool operator==(const Iterator& rhs) const {
            return rhs.Cur_ == Cur_;
        }
        bool operator!=(const Iterator& rhs) const {
            return rhs.Cur_ != Cur_;
        }

    private:
        ListHook* Cur_;
    };

    List() : Dummy_(&Dummy_, &Dummy_) {}
    List(const List&) = delete;
    List(List&& other) {
        Dummy_ = other.Dummy_;
        other.Dummy_.Right_ = other.Dummy_.Left_ = &other.Dummy_;
    }

    // must unlink all elements from list
    ~List() {
        while (Dummy_.Left_ != &Dummy_) {
            Dummy_.Left_->Unlink();
        }
    }

    List& operator=(const List&) = delete;
    List& operator=(List&& other) {
        Dummy_ = other.Dummy_;
        other.Dummy_.Right_ = other.Dummy_.Left_ = &other.Dummy_;

        return *this;
    }

    bool IsEmpty() const {
        return Dummy_.Left_ == &Dummy_;
    }

    // that method is allowed to be O(n)
    size_t Size() const {
        const ListHook* cur = &Dummy_;
        size_t cnt = 0;
        while (cur->Left_ != &Dummy_) {
            ++cnt;
            cur = cur->Left_;
        }
        return cnt;
    }

    // note that IntrusiveList doesn't own elements,
    // and never copies or moves T
    void PushBack(T* elem) {
        elem->LinkBefore(&Dummy_);
    }

    void PushFront(T* elem) {
        elem->LinkBefore(Dummy_.Left_);
    }

    T& Front() {
        return *static_cast<T*>(Dummy_.Right_);
    }
    const T& Front() const {
        return *static_cast<T*>(Dummy_.Right_);
    }

    T& Back() {
        return *static_cast<T*>(Dummy_.Left_);
    }
    const T& Back() const {
        return *static_cast<T*>(Dummy_.Left_);
    }

    void PopBack() {
        Dummy_.Left_->Unlink();
    }

    void PopFront() {
        Dummy_.Right_->Unlink();
    }

    Iterator Begin() {
        return Iterator(Dummy_.Right_);
    }

    Iterator End() {
        return Iterator(&Dummy_);
    }

    // complexity of this function must be O(1)
    Iterator IteratorTo(T* element) {
        return Iterator(element);
    }

private:
    ListHook Dummy_;
};

template <typename T>
typename List<T>::Iterator begin(List<T>& list) {  // NOLINT
    return list.Begin();
}

template <typename T>
typename List<T>::Iterator end(List<T>& list) {  // NOLINT
    return list.End();
}
