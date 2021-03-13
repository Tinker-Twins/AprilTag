#!/bin/bash
# Script to clean the project tree from all compiled files.
# Rebuild the project using "install.sh".

# Go into the directory where this bash script is contained.
cd `dirname $0`

# Remove the dedicated output directory.
rm -rf build

echo Successfully uninstalled AprilTag library
