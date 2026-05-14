#!/bin/bash

source "$HOME/scripts/ac-config.sh"

sudo systemctl status "$AC_AUTH_SERVICE"
sudo systemctl status "$AC_WORLD_SERVICE"