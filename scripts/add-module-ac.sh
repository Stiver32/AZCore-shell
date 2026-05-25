#!/bin/bash

source "$HOME/scripts/ac-config.sh"

MODULE_URL="$1" #first argument passed

if [ -z "$MODULE_URL" ]; then
    echo "Missing module URL"
    echo "Usage: add-module-ac.sh <module_git_url>"
    exit 1
fi 

cd "$AC_CODE_DIR/modules" || exit 1\

if [ -d "$MODULE_NAME" ]; then
    echo "Module folder already exists: $MODULE_NAME"
    exit 1
fi 

git clone "$MODULE_URL"

if [ $? -ne 0 ]; then
    echo "Git clone failed"
    exit 1
fi 

echo "Module added: $MODULE_NAME"
echo "Please run ~/scripts/rebuild-ac.sh to compile the module."