#!/bin/sh
echo MCPELauncher installer for Ubuntu 16.04 LTS.
echo Press enter to install mcpelauncher on your computer
read pause1
sudo dpkg --add-architecture i386
sudo add-apt-repository -y ppa:beineri/opt-qt596-xenial
wget -O - https://mcpelauncher.mrarm.io/apt/conf/public.gpg.key | sudo apt-key add -
sudo add-apt-repository 'deb http://mcpelauncher.mrarm.io/apt/ubuntu/ xenial main'
sudo apt update
sudo apt install msa-daemon msa-ui-qt mcpelauncher-client mcpelauncher-ui-qt
sudo apt install libegl1-mesa:i386 libegl1-mesa-drivers:i386
echo mcpelauncher for xenial installed!