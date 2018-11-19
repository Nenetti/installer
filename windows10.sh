#!/bin/sh

#インストール後 Tweak-tool の外観でwindows10-dark,lightのどちらかを選択
#アイコン,GTKも変更する

sudo apt-get install gnome-tweak-tool

sudo wget https://github.com/Elbullazul/Windows-10/releases/download/v0.9.6/windows-10-tp_0.9-6.amd64.deb
sudo dpkg -i windows-10-tp_0.9-6.amd64.deb
rm -f windows-10-tp_0.9-6.amd64.deb
