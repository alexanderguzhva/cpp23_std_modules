# based on https://www.reddit.com/r/cpp/comments/18rconj/comment/len1dgd/?context=3

cmake_minimum_required(VERSION 3.30)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD ON)
set(CMAKE_CXX_EXTENSIONS ON)

set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "0e5b6991-d74f-4b3d-a41c-cf096e0b2508")
set(CMAKE_CXX_MODULE_STD ON)

project(main)

# Clang because of modules support
if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    if (CMAKE_CXX_COMPILER_VERSION VERSION_LESS 18.1.2)
        message(FATAL_ERROR "Clang version must be at least 18.1.2")
    endif()
else()
    message(FATAL_ERROR "Only Clang is supported")
endif()

add_executable(main main.cpp hueta.cppm)
target_sources(main PUBLIC FILE_SET allModules TYPE CXX_MODULES FILES hueta.cppm)
target_compile_options(main PRIVATE
#        -stdlib=libc++
)
