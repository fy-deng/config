#!/bin/bash

clear

#restore to initial state
sudo chown root:root /etc/ssl/private/private.key
sudo chgrp root /etc/ssl/private/
sudo chmod 600 /etc/ssl/private/private.key

#Insatll ACL
sudo apt-get update -y
sudo apt-get install acl -y

#sudo useradd -r -m -s /bin/false isvc

sudo setfacl -m u:isvc:rx /etc/ssl/private/
sudo setfacl -m u:isvc:r /etc/ssl/private/private.key

sudo -u isvc cat /etc/ssl/private/private.key

#sudo ls /etc/ssl -l
sudo ls /etc/ssl/private -l
#sudo ls /etc/ssl/privat/private.key -l
