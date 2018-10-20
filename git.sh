#!/bin/bash

browser="google-chrome"

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
