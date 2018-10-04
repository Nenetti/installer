#!/bin/bash

#javaのインストール
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
java -version

#ROSのインストール
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo apt-get install -y ros-kinetic-rosjava
sudo apt-get install -y ros-kinetic-turtlebot*
sudo apt-get install -y ros-kinetic-kobuki*
sudo apt-get install -y ros-kinetic-urg-node
sudo apt-get install -y ros-kinetic-rosbridge-server
source ~/.bashrc

#catkin_wsのセットアップ
cd ~
mkdir catkin_ws
mkdir catkin_ws/src
cd catkin_ws/src
catkin_init_workspace
cd ..
catkin_make

#catkin_ws_javaのセットアップ
cd ~
mkdir catkin_ws_java
mkdir catkin_ws_java/src
cd catkin_ws_java/src
catkin_init_workspace
cd ..
catkin_make

#そのほか必要なものをインストール
sudo apt-get install -y gradle
sudo apt-get install -y maven
LANG=C xdg-user-dirs-gtk-update

sudo apt-get install -y compizconfig-settings-manager unity-tweak-tool
sudo pip install ds4drv
sudo apt-get install -y ros-kinetic-joy
sudo apt-get install -y ros-kinetic-usb-cam

