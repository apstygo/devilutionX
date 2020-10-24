cmake .. -G Xcode \
    -DCMAKE_TOOLCHAIN_FILE=../CMake/ios.toolchain.cmake \
    -DPLATFORM=OS64 \
    -DNONET=ON
