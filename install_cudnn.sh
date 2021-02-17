#!/bin/zsh
echo "\e[35m Installing runtime library... \e[0m"
sudo dpkg -i libcudnn8_8.0.5.39-1+cuda10.2_amd64.deb
echo "\e[35m Installing developer library... \e[0m"
sudo dpkg -i libcudnn8-dev_8.0.5.39-1+cuda10.2_amd64.deb
echo "\e[35m Installing samples... \e[0m"
sudo dpkg -i libcudnn8-samples_8.0.5.39-1+cuda10.2_amd64.deb 