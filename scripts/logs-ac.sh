#!/bin/bash

source "$HOME/scripts/ac-config.sh"

echo "Showing authserver logs..."
sudo journalctl -u "$AC_AUTH_SERVICE" -n 50 --no-pager

echo ""
echo "Showing worldserver logs..."
sudo journalctl -u "$AC_WORLD_SERVICE" -n 50 --no-pager