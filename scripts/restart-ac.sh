#!/bin/bash

# Load shared AzerothCore paths/settings
source "$HOME/scripts/ac-config.sh" 

sudo systemctl restart "$AC_AUTH_SERVICE" # Restart current authserver service status
sudo systemctl restart "$AC_WORLD_SERVICE" #Restart current authserver service status

echo "AzerothCore services restarted"