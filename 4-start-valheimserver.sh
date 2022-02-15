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

echo "Deploying the Valheim server with docker-compose"
mv ./valheim-server
docker-compose up
