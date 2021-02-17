#!/bin/zsh
# 在安装zsh并重启后

echo "\e[35m Installing electron-ssr... \e[0m"
sudo apt install gconf2 gconf-service libappindicator1 -y
sudo apt --fix-broken install
sudo dpkg -i ~/ubuntu18/electron-ssr-0.2.6.deb

echo "\e[35m Installing Vscode... \e[0m"
sudo dpkg -i ~/ubuntu18/code_1.53.2-1613044664_amd64.deb

echo "\e[35m Installing Chrome... \e[0m"
sudo dpkg -i ~/ubuntu18/google-chrome-stable_current_amd64.deb

echo "\e[35m Installing Sougou Pinyin... \e[0m"
sudo apt-get install fcitx
sudo dpkg -i ~/ubuntu18/sogoupinyin_2.4.0.3469_amd64.deb
sudo apt -f install

echo "\e[35m Installing WPS... \e[0m"
sudo dpkg -i ~/ubuntu18/wps-office_11.1.0.10161_amd64.deb
sudo apt -f install

echo "\e[31m重启前手动设置以下内容： \e[0m"
echo "\e[32m（1）ssr:导入sockboom的订阅地址\e[0m"
echo "\e[32m（2）vscode:vscode下载setting-sync并Shift+Alt+D同步\e[0m"
echo "\e[32m（3）chrome:登入账号同步\e[0m"
echo "\e[32m（4）拼音:区域与语言——管理已安装语言——键盘输入法系统设置为fcitx，然后应用到整个系统\e[0m"