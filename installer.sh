#!/bin/bash

browser="google-chrome"

package="
compizconfig-settings-manager unity-tweak-tool
git
python3-tk
python3-pip
oracle-java8-installer
gradle
maven
"

#初期更新
sudo apt update
sudo apt upgrade -f
sudo apt-get upfate
sudo apt-get upgrade

#環境設定
LANG=C xdg-user-dirs-gtk-update
sudo sed -i 's/#NTP=/NTP=ntp.nict.jp/g' /etc/systemd/timesyncd.conf 

#リポジトリ追加
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

#パッケージインストール
sudo apt-get install -y $package

#パッケージ掃除
sudo apt autoremove -y

#bashrc書き換え
echo alias python='/usr/bin/python3.5' >> ~/.bashrc
echo alias pip='/usr/bin/pip3' >> ~/.bashrc

#追加deb系
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.3-amd64.deb
sudo dpkg -i slack-desktop-3.3.3-amd64.deb
rm slack-desktop-3.3.3-amd64.deb

#Git環境構築
echo "Github環境構築"
mkdir ~/.ssh
cd ~/.ssh

ssh-keygen -t rsa
echo
cat id_rsa.pub
echo
$browser "https://github.com/settings/ssh"

chmod 600 id_rsa

read -p "email:" mail
read -p "name:" name
git config --global user.email $mail
git config --global user.name $name

#ROSの確認
read -p "ROS-kineticをインストールしますか？ (y/n): " yn
case "$yn" in [yY]*) 
	read -p "本当によろしいですか(最終確認)？ (y/n): " yn
	case "$yn" in [yY]*) 
		bash installer_ros.sh
	esac
esac
