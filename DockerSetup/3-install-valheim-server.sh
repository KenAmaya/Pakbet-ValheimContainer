#!/bin/sh
echo "Creating server directories:"
echo "Making $HOME/valheim-server/config/worlds"
mkdir -p $HOME/valheim-server/config/worlds
echo "Making $HOME/valheim-server/data"
mkdir -p $HOME/valheim-server/data

# Is the existing world save already copied over?

echo "Starting the Valheim Server"
docker run -d \
        --name valheim-server \
        --cap-add=sys_nice \
        --stop-timeout 120 \
        --network host \
        -v $HOME/valheim-server/config:/config \
        -v $HOME/valheim-server/data:/opt/valheim \
        -e SERVER_NAME="P@KB3T" \
        -e WORLD_NAME="FirstWorld" \
        -e SERVER_PASS="BigPwets" \
        -e SERVER_PORT="10800" \
        ghcr.io/lloesche/valheim-server
