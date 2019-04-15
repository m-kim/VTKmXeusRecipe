#!/bin/bash

set -e
set -x

# Build dependencies

mkdir build-dir
cd build-dir

cmake -GNinja \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    ..

ninja install
