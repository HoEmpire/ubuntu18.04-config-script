#!/bin/bash
echo "\e[31m install zsh \e[0m"
sudo apt install zsh
sudo usermod -s /usr/bin/zsh $(whoami)
reboot
