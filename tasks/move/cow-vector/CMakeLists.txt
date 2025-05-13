cmake_minimum_required(VERSION 3.10)
project(test_cow_vector)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CATCH_MAIN_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/../../../contrib/catch/catch_main.cpp)

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../cmake/BuildFlags.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/../../../cmake/TestSolution.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/../../../cmake/SeminarUtils.cmake)

if(NOT EXISTS ${CATCH_MAIN_SOURCE})
    message(FATAL_ERROR "File not found: ${CATCH_MAIN_SOURCE}")
endif()

add_executable(test_cow_vector 
    cow_vector_test.cpp
    cow_vector.cpp
    ${CATCH_MAIN_SOURCE}
)

target_include_directories(test_cow_vector PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../contrib/catch
)
target_compile_options(test_cow_vector PRIVATE -Wno-self-assign-overloaded)
apply_all_sanitizers(test_cow_vector)



