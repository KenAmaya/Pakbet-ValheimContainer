#!/bin/bash

# Check if root
if [ $(id -u) -ne 0 ]
then
	echo "Please run this script as root."
        echo "Required when uninstalling."
	exit
fi


echo "Uninstalling older version of Docker"
dnf remove docker \
	docker-client \
	docker-client-latest \
	docker-common \
	docker-latest \
	docker-latest-logrotate \
	docker-logrotate \
	docker-selinux \
	docker-engine-selinux \
	docker-engine
