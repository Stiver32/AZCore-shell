#!/bin/bash

source "$HOME/scripts/ac-config.sh"

sudo systemctl status "$AC_AUTH_SERVICE" # Show current authserver service status
sudo systemctl status "$AC_WORLD_SERVICE" # Show current authserver service status