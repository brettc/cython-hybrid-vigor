#pragma once

#include <random>
#include <string>

namespace mystuff {

typedef std::mt19937 random_engine_t;

struct MyClass 
{
    MyClass(std::string name, size_t seed);
    double uniform();

    std::string name;
    random_engine_t engine;
};

}
