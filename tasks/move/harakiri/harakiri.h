#pragma once

#include <string>
#include <cassert>

// Should not allow reuse and yell under sanitizers.
// Fix the interface and implementation.
// AwesomeCallback should add "awesomeness".

class OneTimeCallback {
public:
    virtual ~OneTimeCallback() = default;
    virtual std::string operator()() const& = delete;
    virtual std::string operator()() const&& = 0;
};


// Implement ctor, operator(), maybe something else...
class AwesomeCallback : public OneTimeCallback {
public:
    AwesomeCallback(std::string str);

    std::string operator()() const&&;

private:
    std::string Str_;
    mutable bool WasCalled_;
};
