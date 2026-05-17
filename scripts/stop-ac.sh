#!/bin/bash

# Load shared AzerothCore paths/settings
source "$HOME/scripts/ac-config.sh" 

sudo systemctl stop "$AC_AUTH_SERVICE" # Stop current authserver service status
sudo systemctl stop "$AC_WORLD_SERVICE" # Stop current authserver service status

echo "AzerothCore services stopped"