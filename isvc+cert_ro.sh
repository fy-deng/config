#!/bin/bash

sudo groupadd cert_ro
sudo useradd -r -m -s /bin/false isvc
sudo usermod -aG cert_ro isvc

sudo chgrp cert_ro /etc/ssl/private/
sudo chmod 750 /etc/ssl/private/

sudo chown root:cert_ro /etc/ssl/private/private.key
sudo chmod 640 /etc/ssl/private/private.key


sudo -u isvc cat /etc/ssl/private/private.key

tail -l /etc/group
tail -l /etc/passwd