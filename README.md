# Game Server Infrastructure Lab

## Overview

Self-hosted game server lab. The goal was to create a small production-like environment for hosting and managing game server services in addition to practicing Linux administration, networking, and automation.

## Technologies Used

- Proxmox
- Linux
- Bash
- AzerothCore
- MySQL
- NAT / port forwarding
- systemd
- Git

## Project Structure

```text
scripts/
  ac-config.example.sh
  add-module-ac.sh
  update-modules.sh
  rebuild-ac.sh

docs/
  architecture.md
  troubleshooting.md
  security.md
  backup-restore.md

diagrams/
  topology.png