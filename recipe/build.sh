#!/bin/sh
mkdir build && cd build

#cmake -G "Ninja"                            \
cmake                                       \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}        \
    -DCMAKE_PREFIX_PATH=${PREFIX}           \
    -DCMAKE_BUILD_TYPE=Release              \
    ..

#ninja
make -j${CPU_COUNT}

cp dem2mesh $PREFIX/bin
