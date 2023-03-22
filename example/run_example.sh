#!/bin/bash
cd .. && make && DYLD_LIBRARY_PATH=/Users/han/GitHub/llvm-project/build/lib ./instrument example/foo.cpp
