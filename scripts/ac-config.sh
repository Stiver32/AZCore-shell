#!/bin/bash

export AC_CODE_DIR="$HOME/azerothcore"
export BUILD_CORES=$(nproc | awk '{print $1 - 1}')
