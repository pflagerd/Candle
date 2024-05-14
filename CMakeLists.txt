cmake_minimum_required(VERSION 3.13)
project(candle)

set(CMAKE_CXX_STANDARD 17)

add_custom_target(
        BuildAndInstall ALL
        COMMAND ${CMAKE_COMMAND} -E chdir ${CMAKE_SOURCE_DIR} qmake
        COMMAND ${CMAKE_COMMAND} -E chdir ${CMAKE_SOURCE_DIR} make
        COMMAND ${CMAKE_COMMAND} -E chdir ${CMAKE_SOURCE_DIR} make install
)

# If you want the target to be the default target when typing 'make',
# you can set it to be the default build target:

set_directory_properties(PROPERTIES DEFAULT_TARGET BuildAndInstall)
