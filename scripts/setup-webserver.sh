#!/bin/bash

# Update packages
sudo dnf update -y

# Install Apache and EFS utilities
sudo dnf install httpd amazon-efs-utils -y

# Mounts EFS filesystem to the EC2 Instance
sudo mount -t efs -o tls fs-YPUR-EFS-ID: /var/www/html

# Checks the filesystem is uploaded
df -Th /var/www/html

# Upload the code using nano command line editor

# Start Apache
sudo systemctl enable --now httpd

