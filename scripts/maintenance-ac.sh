#!/bin/bash

# Load shared AzerothCore paths/settings
source "$HOME/scripts/ac-config.sh" 

#Stop
echo "Stopping AzerothCore..."
"$HOME/scripts/stop-ac.sh"

#Update Source/Core
echo "Updating AzerothCore SOURCE..."
"$HOME/scripts/update-source-ac.sh"

# Update Modules
echo "Updating AzerothCore MODULES..."
"$HOME/scripts/update-modules-ac.sh"

#Rebuild
echo "Rebuilding AzerothCore..."
"$HOME/scripts/rebuild-ac.sh"

#Start
echo "Starting AzerothCore services..."
"$HOME/scripts/start-ac.sh"

echo "Maintenance completed."w