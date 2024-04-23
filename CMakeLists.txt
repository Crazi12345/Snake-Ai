cmake_minimum_required(VERSION 3.5)

project(SNAKE LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(SNAKE main.cpp
        )

set( CMAKE_CXX_FLAGS "-lSDL2main -lSDL2 -lGL")
