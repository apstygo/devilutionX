cmake_minimum_required(VERSION 3.18)

if(NOT IOS)
    message(FATAL_ERROR "⚠️ This CMakeLists is only intended for iOS project generation")
endif()
