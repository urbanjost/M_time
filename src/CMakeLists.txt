cmake_minimum_required(VERSION 3.10)
project(M_time LANGUAGES Fortran)

# Define the build directory in the project root
set(BUILD_DIR ${CMAKE_SOURCE_DIR}/../build)

# Set the build directory for all CMake-generated files
#set(CMAKE_BINARY_DIR ${BUILD_DIR})
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BUILD_DIR})
#set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${BUILD_DIR})
#set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${BUILD_DIR})

# Set Fortran compiler flags for modern standards
set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -std=f2018")

set(INCLUDE_DIRECTORIES ${CMAKE_BINARY_DIR}/include)

# Place module files (.mod) in build/lib
set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/include)

# Define the library
add_library(M_time STATIC
    M_time.f90
    M_time__oop.f90
    M_time__duplicate.f90
)

# Set output directory for the library to build/lib
set_target_properties(M_time PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${BUILD_DIR}/lib"
)

# Find all Fortran files in test/ and example/ directories (relative to project root)
file(GLOB TEST_SOURCES "${CMAKE_SOURCE_DIR}/../test/*.f90")
file(GLOB EXAMPLE_SOURCES "${CMAKE_SOURCE_DIR}/../example/*.f90")

# Build test programs
foreach(test_source ${TEST_SOURCES})
    get_filename_component(test_name ${test_source} NAME_WE)
    add_executable(${test_name} ${test_source})
    target_link_libraries(${test_name} PRIVATE M_time)
    set_target_properties(${test_name} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/test"
    )
endforeach()

# Build example programs
foreach(example_source ${EXAMPLE_SOURCES})
    get_filename_component(example_name ${example_source} NAME_WE)
    add_executable(${example_name} ${example_source})
    target_link_libraries(${example_name} PRIVATE M_time)
    set_target_properties(${example_name} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/example"
    )
endforeach()

# Install library to /usr/local/lib and module files to /usr/local/include
install(TARGETS M_time
    ARCHIVE DESTINATION lib
)
install(DIRECTORY "${BUILD_DIR}/include/"
    DESTINATION include
    FILES_MATCHING PATTERN "*.mod"
)

# Ensure CMake generates files in build/
set(CMAKE_CACHEFILE_DIR ${BUILD_DIR})
set(CMAKE_CONFIGURE_DEPENDS ${BUILD_DIR}/CMakeCache.txt)
