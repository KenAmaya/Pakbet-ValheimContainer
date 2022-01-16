#!/bin/sh
echo "Running apt-get update"
apt-get update
echo "Installing ca-certificates, curl, gnupg, and lsb-release"
apt-get install \
        ca-certificates \
        curl \
        gnupg \
        lsb-release -y
echo "Adding Docker's official GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "Setting up the repo: stable branch"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "Repository setup done!"
