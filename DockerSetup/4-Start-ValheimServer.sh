#!/bin/sh
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
        -e SERVER_PASS="********" \
        -e SERVER_PORT="10800" \
        
