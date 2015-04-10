#pragma once

#include <random>

namespace mystuff {

typedef std::mt19937 random_engine_t;

class MyClass 
{
public:
    MyClass(size_t seed);
    double uniform();

private:
    random_engine_t engine;
};

}
