#!/bin/bash

# Update package lists
sudo apt-get update

# Install Apache, PHP, and Git
sudo apt-get install -y apache2 php libapache2-mod-php php-mysql git

# Enable PHP module
sudo a2enmod php7.4

# Clone Slim framework
git clone https://github.com/slimphp/Slim.git /var/www/html/slim

# Set permissions
sudo chown -R www-data:www-data /var/www/html/slim

# Restart Apache
sudo systemctl restart apache2

# Create a simple PHP info file for testing
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

# Display public IP and access message
public_ip=$(curl -s ifconfig.me)
echo "Access the Slim framework at: http://${public_ip}/slim"
echo "Access PHP info at: http://${public_ip}/info.php"
