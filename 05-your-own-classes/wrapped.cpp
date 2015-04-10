#include "wrapped.hpp"

using namespace mystuff;

MyClass::MyClass(size_t s)
    : engine(s) 
{
}

double MyClass::uniform()
{
    std::uniform_real_distribution<> uni;
    return uni(engine);
}



