#!/bin/zsh
# 在安装zsh并重启后

echo "\e[35m intalling oh-my-zsh \e[0m"
#sudo apt install git
#git config --global http.proxy 'socks5://127.0.0.1:1080' 
#git config --global https.proxy 'socks5://127.0.0.1:1080'
sudo echo 'nameserver 8.8.8.8'>>/etc/resolv.conf
mkdir ~/git-file
cd ~/git-file
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
mv ~/ubuntu18/zshrc.txt ~/.zshrc

echo "\e[35m intalling autojump \e[0m"
git clone git://github.com/joelthelion/autojump.git
cd autojump && ./install.py && cd ..
echo "[[ -s /home/tim/.autojump/etc/profile.d/autojump.sh ]] && source /home/tim/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "autoload -U compinit && compinit -u" >> ~/.zshrc

echo "\e[35m intalling zsh-syntax-highlighting \e[0m"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "\e[35m intalling zsh-autosuggestions \e[0m"
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "\e[35m intalling trash \e[0m"
sudo apt install trash-cli -y
