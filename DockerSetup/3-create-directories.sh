#!/bin/bash

# Check if root
if [ $(id -u) -ne 0 ]
then
	echo "Please run this script as root."
	exit
fi

echo "Creating server directories:"
echo "Making ../valheim-server/config/worlds"
mkdir -p ../valheim-server/config/worlds
echo "Making ../valheim-server/data"
mkdir -p ../valheim-server/data
echo "Fetching the Valheim Server's .yaml file"
curl -o ../valheim-server/docker-compose.yaml https://raw.githubusercontent.com/lloesche/valheim-server-docker/main/docker-compose.yaml

# Your save data (.fwl and .db) should be moved to the directory valheim-server/config/worlds


