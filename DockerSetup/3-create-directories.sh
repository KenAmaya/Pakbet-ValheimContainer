#!/bin/sh
echo "Creating server directories:"
echo "Making $HOME/valheim-server/config/worlds"
mkdir -p $HOME/valheim-server/config/worlds
echo "Making $HOME/valheim-server/data"
mkdir -p $HOME/valheim-server/data

# Your save data (.fwl and .db) should be moved to the directory in line 4
