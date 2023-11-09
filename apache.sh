#!/usr/bin/bash

apt update
apt-get install apache2 -y
apt-get install unzip -y
wget -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/main.zip -d /tmp/
cp -r /tmp/linux-site-dio-main/* /var/www/html/
