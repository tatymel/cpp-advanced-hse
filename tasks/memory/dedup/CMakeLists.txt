cmake_minimum_required(VERSION 3.10)
project(dedup_test)

# Установка стандарта C++
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Полный абсолютный путь к catch_main.cpp
set(CATCH_MAIN_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/../../../contrib/catch/catch_main.cpp)

# Проверка существования файла
if(NOT EXISTS ${CATCH_MAIN_SOURCE})
    message(FATAL_ERROR "File not found: ${CATCH_MAIN_SOURCE}")
endif()

# Создание исполняемого файла
add_executable(test_dedup 
    test.cpp
    ${CATCH_MAIN_SOURCE}
)

# Указываем пути для include
target_include_directories(test_dedup PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../contrib/catch
)
