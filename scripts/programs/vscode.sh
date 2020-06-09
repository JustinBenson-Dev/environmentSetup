#!/bin/bash

#install vscode
echo "Installing Visual Studio Code..."

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

#Then update the package cache and install the package using:
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get -y install code 
