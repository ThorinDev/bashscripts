#!/bin/bash 
sudo apt-get update -y
sudo apt-get dist-update -y
sudo apt-get upgrade -y
sudo apt-get install -y
sudo rm -rf /etc/motd
curl -L --silent https://git.io/vXFbI | bash
echo "FirstBoot was instaled"
