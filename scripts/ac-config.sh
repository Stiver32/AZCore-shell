#!/bin/bash

export AC_CODE_DIR="$HOME/azerothcore" # code directory for AC
export AC_BUILD_DIR="$AC_CODE_DIR/build"
export AC_DIST_DIR="$AC_CODE_DIR/env/dist"
export AC_BIN_DIR="$AC_DIST_DIR/bin"
export AC_ETC_DIR="$AC_DIST_DIR/etc"

export BUILD_CORES=$(nproc | awk '{print $1 - 1}') # build cores for AC

export AC_AUTH_SERVICE="ac-authserver"
export AC_WORLD_SERVICE="ac-worldserver"