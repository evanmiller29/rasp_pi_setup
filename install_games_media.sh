# Page https://ubuntu.pkgs.org/20.04/ubuntu-multiverse-arm64/vcmi_0.99+dfsg+git20190113.f06c8a87-1_arm64.deb.html

sudo apt update
sudo apt autoclean

cd ..
mkdir installed_shiz
cd installed_shiz

mkdir heroes_3 -p
cd heroes_3
# Ubuntu install
#wget http://ports.ubuntu.com/pool/multiverse/v/vcmi/vcmi_0.99+dfsg+git20190113.f06c8a87-1_arm64.deb
#sudo dpkg -i vcmi_0.99+dfsg+git20190113.f06c8a87-1_arm64.deb
#sudo apt install ./vcmi_0.99+dfsg+git20190113.f06c8a87-1_arm64.deb

# Raspberian install, need to use version 1 instead of current
wget http://ftp.de.debian.org/debian/pool/contrib/v/vcmi/vcmi_0.99+dfsg+git20190113.f06c8a87-1_armhf.deb
sudo dpkg -i vcmi_0.99+dfsg+git20190113.f06c8a87-1_armhf.deb
sudo apt install ./vcmi_0.99+dfsg+git20190113.f06c8a87-1_armhf.deb
sudo apt --fix-broken install -y

sudo apt-get install innoextract
# Run once you've downloaded heroes launcher from GoG
# vcmibuilder --gog setup_homm3_complete_2.0.0.16.exe

# Setting up kodi dependencies
# https://pimylifeup.com/raspberry-pi-netflix/
cd ..
mkdir kodi -p
cd kodi

sudo apt update
sudo apt upgrade
sudo apt install kodi kodi-peripheral-joystick kodi-pvr-iptvsimple kodi-inputstream-adaptive kodi-inputstream-rtmp
sudo apt install build-essential python-pip python-dev libffi-dev libssl-dev libnss3

sudo pip install setuptools wheel
sudo pip install pycryptodomex win_inet_pton
wget https://github.com/castagnait/repository.castagnait/raw/master/repository.castagnait-1.0.1.zip

