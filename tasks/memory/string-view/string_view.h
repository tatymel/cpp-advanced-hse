#pragma once

#include <string>
#include <stdexcept>

class StringView {
public:
    using size_type = std::size_t;

    StringView(
            const std::string& str, size_type beginPos = 0, size_type length = std::string::npos)
            : Begin_(str.data() + beginPos)
            , Size_(length == std::string::npos ? str.size() - beginPos : length)
    {
        if (beginPos + Size_ > str.size()) {
            Size_ = str.size() - beginPos;
        }

        if (beginPos > str.size()) {
            throw std::out_of_range("beginPos is greater than the size of the string");
        }
    }

    StringView(const char* str, size_type length = std::string::npos)
        : Begin_(str)
        , Size_(length == std::string::npos ? std::strlen(str) : length)
    { }

    const char& operator[](size_type ind) const {
        if (ind >= Size_) {
            throw std::out_of_range("Index = " + std::to_string(ind) + " out of range");
        }
        return *(Begin_ + ind);
    }

    size_type Size() const {
        return Size_;
    }

private:
    const char* Begin_;
    size_type Size_;
};
