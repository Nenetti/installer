#!/bin/bash

sudo apt-get install -y texlive-full

read -p "Atomをインストールしますか？ (y/n): " yn
case "$yn" in [yY]*) 
	#追加deb系
	Atom=atom-amd64.deb
	wget https://atom-installer.github.com/v1.32.0/$Atom
	sudo dpkg -i $Atom
	sudo rm $Atom
	apm install latex language-latex latexer pdf-view japanese-menu
	echo "'atom-text-editor[data-grammar~=\"latex\"]':" >> ~/.atom/keymap.cson
	echo "  'ctrl-shift-b': 'latex:build'" >> ~/.atom/keymap.cson
esac


