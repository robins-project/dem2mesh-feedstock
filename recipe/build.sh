#!/bin/sh
mkdir build && cd build

cmake -G "Ninja"                            \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}        \
    -DCMAKE_PREFIX_PATH=${PREFIX}           \
    -DCMAKE_BUILD_TYPE=Release              \
    ..

ninja

cp dem2mesh $PREFIX/bin
