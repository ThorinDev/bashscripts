#!/bin/bash
sudo rm -f /etc/motd
sudo curl -L --silent https://raw.githubusercontent.com/ThorinDev/bashscripts/master/motd/motd.txt -o ~/.bash_profile
echo "Succesfully installed a MOTD"
