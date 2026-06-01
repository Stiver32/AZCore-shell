#!/bin/bash

source "$HOME/scripts/ac-config.sh"

cd "$AC_CODE_DIR/modules" || exit 1

# loop through ever folder in current directory
for module in */; do 
    echo "Checking module: $module"
    cd "$module" || exit 1 

    if[-d ".git"]; then
        git pull
    else 
        echo "Skipping $module . Not a Git repo"
    fi 

    cd ..
done 

echo "Module update check complete"
echo "Run ~/scripts/rebuild-ac.sh if any modules were updated."