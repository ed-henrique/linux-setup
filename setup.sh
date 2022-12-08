#!/usr/bin/env bash

# Update system
###############################################################################

sudo apt update
sudo apt upgrade

# Install Apps
###############################################################################

# AppImage Launcher
###################

sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher

# NVM
#####

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
source "/home/$(whoami)/.bashrc"

# Yarn
######

npm i --location=global yarn

# Flutter
#########

sudo snap install flutter --classic

# VS Code
#########

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Flameshot
###########

sudo apt install flameshot -y

# zsh
#####

sudo apt install zsh -y

# oh-my-zsh
###########

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Hyper
#######

wget -O "Hyper.AppImage" "https://releases.hyper.is/download/AppImage"
sudo mv "Hyper.AppImage" "/opt"
sudo chmod u+x "/opt/Hyper.AppImage"

# Move config files
###############################################################################

mv -f ".zshrc" ".bashrc" ".gitconfig" ".hyper.js" "/home/$(whoami)"

# Change default shell to zsh and terminal emulator to Hyper
###############################################################################

sudo chsh -s "/bin/zsh" "$(whoami)" 
sudo gsettings set org.gnome.desktop.default-applications.terminal exec "/opt/Hyper"

# Set custom keyboard shortcuts
###############################################################################

# Change background
###############################################################################

sudo gsettings set org.gnome.desktop.background picture-uri "file:///assets/bg.jpg"

# Update system
###############################################################################

sudo apt update
sudo apt upgrade
