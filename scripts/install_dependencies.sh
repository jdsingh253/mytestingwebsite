#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo mkdir -p Applications/{mywebsite,mywebsite2}
sudo cp /home/ubuntu/Applications/mywebsite/mywebsite.conf /etc/apache2/sites-available/
sudo a2ensite mywebsite.conf
sudo a2dissite 000-default.conf
sudo systemctl reload apache2