#!/bin/bash

browser="google-chrome"

#Git環境構築
echo "Github環境構築"

read -p "email:" mail
read -p "name:" name
git config --global user.email $mail
git config --global user.name $name

DIR=$(cd $(dirname $0); pwd)
echo alias pip='source .git_view.sh' >> ~/.bashrc
cp $DIR/.git_view.sh $HOME/.git_view.sh

#SSH設定
mkdir ~/.ssh
cd ~/.ssh

ssh-keygen -t rsa
echo
cat id_rsa.pub | xsel --clipboard --input
echo
$browser "https://github.com/settings/ssh"

chmod 600 id_rsa

