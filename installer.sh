#!/bin/bash

package="
compizconfig-settings-manager unity-tweak-tool
git
python3-tk
python3-pip
oracle-java8-installer
gradle
maven
xsel
expect
mpg321
gnome-tweak-tool
redshift
redshift-gtk
"

DIR=$(cd $(dirname $0); pwd)
cp $DIR/redshift.conf $HOME/.config/redshift.conf

read -p "初期インストールをしますか？ (y/n): " yn
case "$yn" in [yY]*) 
	bash init.sh
esac


read -p "Chromeをインストールしますか？ (y/n): " yn
case "$yn" in [yY]*) 
	#追加deb系
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
	rm google-chrome-stable_current_amd64.deb
esac


read -p "Slackをインストールをしますか？ (y/n): " yn
case "$yn" in [yY]*) 
	wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.3-amd64.deb
	sudo dpkg -i slack-desktop-3.3.3-amd64.deb
	rm slack-desktop-3.3.3-amd64.deb
esac


read -p "Gitの環境構築しますか？ (y/n): " yn
case "$yn" in [yY]*) 
	bash git.sh
esac

read -p "Latexの環境構築しますか？ (y/n): " yn
case "$yn" in [yY]*) 
	bash latex.sh
esac

#ROSの確認
read -p "ROS-kineticをインストールしますか？ (y/n): " yn
case "$yn" in [yY]*) 
	read -p "本当によろしいですか(最終確認)？ (y/n): " yn
	case "$yn" in [yY]*) 
		bash ros.sh
	esac
esac
