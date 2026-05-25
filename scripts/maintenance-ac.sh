#!/bin/bash

source "$HOME/scripts/ac-config.sh"

echo "Stopping AzerothCore..."
"$HOME/scripts/stop-ac.sh"

echo "Updating AzerothCore source..."
"$HOME/scripts/update-source-ac.sh"

echo "Rebuilding AzerothCore..."
"$HOME/scripts/rebuild-ac.sh"

echo "Starting AzerothCore..."
"$HOME/scripts/start-ac.sh"

echo "Maintenance complete."