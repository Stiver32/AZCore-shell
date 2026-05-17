#!/bin/bash

# Stores shared AZCore settings - other scripts this

export AC_CODE_DIR="$HOME/azerothcore" # Main AzerothCore source/install directory
export AC_BUILD_DIR="$AC_CODE_DIR/build" # Build directory created during AC compile. Run cmake and make here
export AC_DIST_DIR="$AC_CODE_DIR/env/dist" # Install/output directories used by CMake
export AC_BIN_DIR="$AC_DIST_DIR/bin" # authserver/worldserver binaries and data files live here
export AC_ETC_DIR="$AC_DIST_DIR/etc" # worldserver and authserver .conf files live here

export BUILD_CORES=$(nproc | awk '{print $1 - 1}') # build cores for AC/number of CPU threads

# systemd service names for AC
export AC_AUTH_SERVICE="ac-authserver" 
export AC_WORLD_SERVICE="ac-worldserver"