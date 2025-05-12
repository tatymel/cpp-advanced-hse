#pragma once

#include <type_traits>

// size_t N — нетиповой параметр шаблона (non-type template parameter)
// typename T — типовой параметр шаблона (type template parameter)
// bool = std::is_empty_v<T> && !std::is_final_v<T> — параметр шаблона по умолчанию (defaulted template parameter)

template<size_t N, typename T, bool = std::is_empty_v<T> && !std::is_final_v<T>>
class CompressedElement;

template<size_t N, typename T>
class CompressedElement<N, T, true> : private T {
public:
    CompressedElement() = default;
    template<typename U>
    CompressedElement(U&& value) : T(std::forward<U>(value)) { }

    T& Get() { return *this; }
    const T& Get() const  { return *this; }
};

template<size_t N, typename T>
class CompressedElement<N, T, false> {
public:
    CompressedElement() : value_() { }
    template<typename U>
    CompressedElement(U&& value) : value_(std::forward<U>(value)) { }

    T& Get() { return value_; }
    const T& Get() const  { return value_; }
private:
    T value_;
};

template <typename F, typename S>
class CompressedPair : public CompressedElement<0, F>, public CompressedElement<1, S> {
    using FirstBase = CompressedElement<0, F>;
    using SecondBase = CompressedElement<1, S>;
public:
    CompressedPair() = default;

    template <typename FF, typename SS>
    CompressedPair(FF&& first, SS&& second) : FirstBase(std::forward<FF>(first)), SecondBase(std::forward<SS>(second)) {}

    F& GetFirst() { return FirstBase::Get(); }
    const F& GetFirst() const { return FirstBase::Get(); }
    S& GetSecond() { return SecondBase::Get(); }
    const S& GetSecond() const { return SecondBase::Get(); }
};