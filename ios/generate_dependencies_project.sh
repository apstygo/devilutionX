rm -rf Dependencies

cmake . \
    -G Xcode \
    -B Dependencies \
    -DCMAKE_TOOLCHAIN_FILE=../CMake/ios.toolchain.cmake \
    -DPLATFORM=OS64 \
    -DNONET=ON
