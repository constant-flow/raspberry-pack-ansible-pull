#!/bin/bash

# move environment variables file to home directory
mv /boot/raspberry-pack/.env /home/pi/

# move ansible files to dedicated directory
mkdir /home/pi/ansible_pull
mv /boot/raspberry-pack/hosts /home/pi/ansible_pull/
mv /boot/raspberry-pack/ansible_update.sh /home/pi/ansible_pull/

# add ansible-update cronjob
sudo echo "$ANSIBLE_PULL_CRON /home/pi/ansible_pull/ansible_update.sh" >> /etc/crontab