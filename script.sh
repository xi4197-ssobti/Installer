#!/bin/bash
# shell script to install and configure git
echo "----Installer-----------"
if ! [ -x "$(command -v git)" ];then
echo "git not found on your system"
echo "installing git"
sudo apt-get update -y
sudo apt-get install git -y
echo "Git installed"
git --version

echo "Configuring git "
echo "Enter your Github email id"
read mail
echo "Enter your Github Username"
read username

git config --global user.mail "$mail"
git config --global user.name "$username"
echo "Configured"

else
echo "git found on your system"
git --version
fi
