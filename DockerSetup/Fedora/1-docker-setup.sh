#!/bin/sh

# Check if root
if [ $(whoami) != root ]
then
	echo "Please run this script as root."
        echo "Required when installing."
	exit
fi

echo "Installing the dnf-plugins-core package"
dnf -y install dnf-plugins-core

echo "Setting up the Docker repository:stable"
dnf config-manager \
	--add-repo \
	https://download.docker.com/linux/fedora/docker-ce.repo

echo "Installing the Docker Engine"
dnf -y install docker-ce \
	docker-ce-cli \
	containerd.io

echo "Starting Docker"
systemctl start docker

echo "Verifying Docker install. Running the hello-world image"
docker run hello-world

