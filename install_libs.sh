#!/bin/zsh
echo "\e[35m Installing eigen tmux, and pcl \e[0m"
sudo apt install libeigen3-dev libpcl-dev tmux -y

echo "\e[35m Installing ROS \e[0m"
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt upgrade -y
sudo apt-get install aptitude -y
echo "select no then yes" >> ~/.zshrc
sudo aptitude install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
source ~/.zshrc

