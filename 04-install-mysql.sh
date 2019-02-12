#!/bin/sh

# Default version of mysql for debian was 5.x
# Installation instructions call for version 8

#Reference: https://www.digitalocean.com/community/tutorials/how-to-install-the-latest-mysql-on-debian-9

DEB=mysql-apt-config_0.8.10-1_all.deb	\

touch /tmp/$DEB
rm -f /tmp/$DEB

wget -O /tmp/$DEB	\
	https://dev.mysql.com/get/$DEB

sudo pkg -i /tmp/$DEB

sudo apt update

sudo apt install mysql-server

