#!/bin/bash

# Check if root
if [ $(id -u) -ne 0 ]
then
	echo "Please run this script as root."
	exit
fi

echo "Creating server directories:"
echo "Making $HOME/valheim-server/config/worlds"
mkdir -p $HOME/valheim-server/config/worlds
echo "Making $HOME/valheim-server/data"
mkdir -p $HOME/valheim-server/data

# Your save data (.fwl and .db) should be moved to the directory in line 4

source ./4-start-valheimserver.sh

