#!/bin/bash

# Load shared AzerothCore paths/settings
source "$HOME/scripts/ac-config.sh" 

sudo systemctl start "$AC_AUTH_SERVICE" # Start current authserver service status
sudo systemctl start "$AC_WORLD_SERVICE" # Start current authserver service status

echo "AzerothCore services started"