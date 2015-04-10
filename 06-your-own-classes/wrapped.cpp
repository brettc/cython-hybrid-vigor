#include "wrapped.hpp"

using namespace mystuff;

MyClass::MyClass(std::string name_, size_t seed_)
    : name(name_)
    , engine(seed_) 
{
}

double MyClass::uniform()
{
    std::uniform_real_distribution<> uni;
    return uni(engine);
}



