#!/bin/bash
apt-get update
apt-get install nginx -y
echo "Hi There" >/var/www/html/index.nginx-debian.html