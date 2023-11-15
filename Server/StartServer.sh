#!/bin/sh

# Get the directory where the script is located
script_dir=$(dirname "$(readlink -f "$0")")

# Get the private Key
ssh_private_key="$script_dir/ssh-key-2023-11-04.key"

# Connect to server with SSH Key
ssh opc@141.147.22.51 -i "$ssh_private_key" << 'EOF'

# change dicertory
cd FabricServer/

# start minecraft server
java -Xmx20G -jar fabric-server-mc.1.20.1-loader.0.14.24-launcher.0.11.2.jar nogui

EOF