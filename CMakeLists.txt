cmake_minimum_required(VERSION 3.1.0)

if(NOT CMAKE_CXX_COMPILER)
  if(APPLE)
    set(CMAKE_CXX_COMPILER "g++-12")
  elseif(UNIX)
    set(CMAKE_CXX_COMPILER "g++")
  endif()
endif()

project(GraStream VERSION 0.1.0
        DESCRIPTION "Graph algorithm in streaming model"
        LANGUAGES  C CXX
        )


include(CTest)
enable_testing()

#To help detect the include directories for ALE plugin of Vim
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#
# Prevent building in the source directory
#

if(PROJECT_SOURCE_DIR STREQUAL PROJECT_BINARY_DIR)
  message(FATAL_ERROR "In-source builds not allowed. Please make a new directory (called a build directory) and run CMake from there.\n")
endif()



# The executable code is here
add_subdirectory(apps)

# The compiled library code is here
add_subdirectory(src)

