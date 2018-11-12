#!/bin/sh

FILE=code_1.28.2-1539735992_amd64.deb
URL=https://az764295.vo.msecnd.net/stable/7f3ce96ff4729c91352ae6def877e59c561f4850/$FILE
DIR=$HOME/.vscode/extensions
REPOSITORY=Nenetti/vscode-theme

wget $URL
sudo dpkg -i $FILE
rm $FILE
mkdir -p $DIR
cd $DIR
git clone git@github.com:$REPOSITORY