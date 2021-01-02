#!/bin/bash

wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tar.xz
tar -xf Python-3.9.1.tar.xz
cd Python-3.9.1
./configure
sudo make altinstall

python3.9 --version
