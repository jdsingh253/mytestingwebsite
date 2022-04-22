#!/bin/bash
EC2_INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
EC2_AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
sed -i "s/was deployed/was deployed on $EC2_INSTANCE_ID in $EC2_AZ/g" /home/ubuntu/Applications/mywebsite/index.html
chmod 664 /home/ubuntu/Applications/mywebsite/index.html
sudo cp /home/ubuntu/Applications/mywebsite/mywebsite.conf /etc/apache2/sites-available/
sudo a2ensite mywebsite.conf
sudo a2dissite 000-default.conf
sudo systemctl reload apache2