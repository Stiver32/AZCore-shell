#!/bin/bash
set -euo pipefail

# Load shared AzerothCore paths/settings
source "$HOME/scripts/ac-config.sh"

# Move into build directory
cd "$AC_BUILD_DIR"

# Reconfigure build
cmake ../ \
  -DCMAKE_INSTALL_PREFIX="$AC_DIST_DIR/" \
  -DCMAKE_C_COMPILER=/usr/bin/clang \
  -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
  -DWITH_WARNINGS=1 \
  -DTOOLS_BUILD=all \
  -DSCRIPTS=static \
  -DMODULES=static

# Compile
make -j"$BUILD_CORES"

# Install compiled binaries
make install
