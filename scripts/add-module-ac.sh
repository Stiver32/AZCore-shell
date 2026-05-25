#!/bin/bash

source "$HOME/scripts/ac-config.sh"

MODULE_URL="$1" #first argument passed

#check for empty string
if [ -z "$MODULE_URL" ]; then
    echo "Missing module URL"
    echo "Usage: add-module-ac.sh <module_git_url>" 
    exit 1
fi 

MODULE_NAME=$(basename "$MODULE_URL" .git) #extract module name from url/remove .git from it and store in variable
cd "$AC_CODE_DIR/modules" || exit 1

#check if directory with module name already exists
if [ -d "$MODULE_NAME" ]; then
    echo "Module folder already exists: $MODULE_NAME"
    exit 1
fi 

git clone "$MODULE_URL"

#if git clone doesn't return 0 (success), print error and stop
if [ $? -ne 0 ]; then
    echo "Git clone failed"
    exit 1
fi 

echo "Module added: $MODULE_NAME"
echo "Please run ~/scripts/rebuild-ac.sh to compile the module."