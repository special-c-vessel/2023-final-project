#!/bin/bash
cd .. && make && DYLD_LIBRARY_PATH=/Users/yongil/Documents/Dev/C++/llvm-project/build/lib ./instrument example/foo.c
