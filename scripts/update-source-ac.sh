#!/bin/bash
set -euo pipefail

source "$HOME/scripts/ac-config.sh" #load AZCore path

cd "$AC_CODE_DIR" #Go to source folder

git fetch origin
#Show current git status
if [[ -n "$(git status --short)" ]]; then
    echo "Local changes detected. Aborting update."
    exit 1
fi
behind_count=$(git rev-list --count HEAD..origin/master)
echo "Azerothcore is $behind_count commits behind origin/master"
git pull --ff-only #Pull latest source changes
