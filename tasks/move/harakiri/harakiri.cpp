#include "harakiri.h"

AwesomeCallback::AwesomeCallback(std::string str) : Str_(std::move(str)), WasCalled_(false) { }

std::string AwesomeCallback::operator()() const&& {
    assert(!WasCalled_);
    WasCalled_ = true;
    return Str_ + "awesomeness";
}
