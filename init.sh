#初期更新
sudo apt update
sudo apt upgrade -f
sudo apt-get update
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


