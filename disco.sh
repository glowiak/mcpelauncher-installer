#!/bin/sh
echo MCPELauncher installer for Ubuntu 19.04 LTS.
echo Press enter to install mcpelauncher on your computer
read pause1
sudo dpkg --add-architecture i386
wget -O - https://mcpelauncher.mrarm.io/apt/conf/public.gpg.key | sudo apt-key add -
sudo add-apt-repository 'deb http://mcpelauncher.mrarm.io/apt/ubuntu/ disco main'
sudo apt-get install msa-daemon msa-ui-qt mcpelauncher-client mcpelauncher-ui-qt
sudo apt install libegl1-mesa-dev:i386
echo mcpelauncher for disco installed!