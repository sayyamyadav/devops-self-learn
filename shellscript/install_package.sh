#!/bin/bash
#
<<note
this shell for installing package using passed an argument ./install_pacakage <argument>
note
echo $1
echo "*********************************Installing $1******************************"
sudo apt-get update
sudo apt-get install $1 -y

sudo systemctl start $1
sudo systemctl enable $1

echo "************************************Installed $1 Done************************************"
