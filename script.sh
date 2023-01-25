#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo echo "Hi There" >/var/www/html/index.nginx-debian.html