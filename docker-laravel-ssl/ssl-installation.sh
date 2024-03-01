#!/bin/bash

# Update package list
sudo apt-get update

# Install Certbot
openssl req -x509 -new -out mycert.crt -keyout mycert.key -days 365 -newkey rsa:4096 -sha256 -nodes

# Ensure Apache is running
sudo systemctl start apache2

# Reload Apache to apply changes
sudo systemctl reload apache2

echo "SSL installation complete."
