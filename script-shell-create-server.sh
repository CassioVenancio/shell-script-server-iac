#!/bin/bash

echo "Update server Web Apache"

apt-get update && apt-get upgrade -y
apt-get install apache2 -y && apt-get install unzip -y

echo "Download App Web"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/
