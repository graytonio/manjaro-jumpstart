#!/bin/bash
echo "Installing Dependencies"
sudo pacman -S ansible git --no-confirm

echo "Cloning repo"
mkdir -p $HOME/Documents/repos
git clone https://github.com/graytonio/manjaro-jumpstart $HOME/Documents/repos/manjaro-jumpstart

echo "Running Configuration Playbook"
cd $HOME/Documents/repos/manjaro-jumpstart
./configure.yml --ask-become
