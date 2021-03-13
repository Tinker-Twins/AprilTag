#!/bin/bash
# Script to build (compile) the project.
# Clean existing build using "uninstall.sh".

# Go into the directory where this bash script is contained.
cd `dirname $0`

# Build (compile) the project and store output in the dedicated output directory.
mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

echo Successfully installed AprilTag library
