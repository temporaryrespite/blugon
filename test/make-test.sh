#!/usr/bin/env bash

TEST_DIR="$(dirname "${BASH_SOURCE[0]}")"

cd "$TEST_DIR" || exit
cd ..

mkdir -p "test/build"
MAKE_PREFIX="$(pwd)/test/build"

make PREFIX="$MAKE_PREFIX"
make install PREFIX="$MAKE_PREFIX"
make clean
