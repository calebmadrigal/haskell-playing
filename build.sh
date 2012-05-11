#!/bin/bash
if [ $# -gt 0 ]; then
    mkdir -p bin
    ghc --make "$1" -o "bin/$1"
    rm "$1.hi" "$1.o"
else
    echo "Usage: ./build.sh <haskell source file name (without the .hs)>"
fi
