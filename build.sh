#!/bin/bash

set -e

if [ "$BUILD_ARCH" == "x86" ]; then
    cmake -DCMAKE_BUILD_TYPE=Release . -DCMAKE_CXX_FLAGS=-m32 && make
else
    cmake -DCMAKE_BUILD_TYPE=Release . && make
fi
