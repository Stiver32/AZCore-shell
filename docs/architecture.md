### docs/architecture.md

```md
# Architecture

## Design

Runs on a Proxmox host with a dedicated Linux VM for game server's services. 
The VM runs AzerothCore, MySQL, and supporting scripts for setup, updates, and rebuilds.

The environment separates the home LAN from the internal server network using Proxmox bridges and NAT.

## Network Layout

```text
Internet
   
Home Router
   
Proxmox Host
   
    vmbr0: Home LAN / management network
   
    vmbr1: Internal lab network
          
           Game Server VM