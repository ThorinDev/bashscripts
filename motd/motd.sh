#!/bin/bash
sudo rm -f /etc/motd
sudo curl -L --silent https://raw.githubusercontent.com/ThorinDev/PI/master/bash_profile/bash_profile.txt -o ~/.bash_profile
echo "Succesfully installed a MOTD"
