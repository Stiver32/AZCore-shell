#!/bin/bash

# Load shared AzerothCore paths/settings
source "$HOME/scripts/ac-config.sh" 

# Move into build directory - stop if failure
cd "$AC_CODE_DIR/build" || exit 1

# Reconfigure build
# compile source code, and install compiled files into AC_DIST_DIR
cmake ../ -DCMAKE_INSTALL_PREFIX=$AC_CODE_DIR/env/dist/ \
-DCMAKE_C_COMPILER=/usr/bin/clang \
-DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
-DWITH_WARNINGS=1 -DTOOLS_BUILD=all \
-DSCRIPTS=static \
-DMODULES=static \
&& make -j$BUILD_CORES \ 
&& make install


