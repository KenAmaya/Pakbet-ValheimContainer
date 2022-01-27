#!/bin/bash

# Check if root
if [ $(id -u) -ne 0 ]
then
	echo "Please run this script as root."
        echo "Required when running Docker."
	exit
fi
echo "Starting the Docker Daemon"
systemctl start docker

echo "Starting the Valheim Server"
docker run -d \
        --name valheim-server \
        --cap-add=sys_nice \
        --stop-timeout 120 \
	--restart unless-stopped \
	-p 10800-10801:10800-10801/udp \
        -v $HOME/valheim-server/config:/config \
        -v $HOME/valheim-server/data:/opt/valheim \
        -e SERVER_NAME="Ken's Server" \
        -e WORLD_NAME="FirstWorld" \
        -e SERVER_PASS="Hello there." \
        -e SERVER_PORT="10800" \
        ghcr.io/lloesche/valheim-server 
