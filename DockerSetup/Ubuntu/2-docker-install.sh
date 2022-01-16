#!/bin/sh
echo "Installing the latest docker-ce, docker-ce-cli, and containerd.io"
apt-get install \
        docker-ce \
        docker-ce-cli \
        containerd.io -y
echo "Verifying that the Docker Engine is installed correctly."
echo "Running the Docker hello-world image"
docker run hello-world
