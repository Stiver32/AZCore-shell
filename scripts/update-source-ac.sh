#!/bin/bash

source "$HOME/scripts/ac-config.sh" #load AZCore path

cd "$AC_CODE_DIR" || exit 1 #Go to source folder

git status #Show current git status
echo "Updating AzerothCore source..."
git pull #Pull latest source changes