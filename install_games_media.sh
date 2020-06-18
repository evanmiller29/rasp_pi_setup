sudo apt update
sudo apt autoclean

cd ..
mkdir installed_shiz
cd installed_shiz

################################
###### HEROES MOTHERUCKER ######
################################

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

sudo apt-get install innoextract -y
# Run once you've downloaded heroes launcher from GoG
# vcmibuilder --gog setup_homm3_complete_2.0.0.16.exe

cd ..

################################
# Setting up kodi dependencies #
################################

# https://pimylifeup.com/raspberry-pi-netflix/
#cd ..
#mkdir kodi -p
#cd kodi

#sudo apt install kodi kodi-peripheral-joystick kodi-pvr-iptvsimple kodi-inputstream-adaptive kodi-inputstream-rtmp
#sudo apt install build-essential python-pip python-dev libffi-dev libssl-dev libnss3

#sudo pip install setuptools wheel
#sudo pip install pycryptodomex win_inet_pton
#wget https://github.com/castagnait/repository.castagnait/raw/master/repository.castagnait-1.0.1.zip

################################
########### NordVPN ############
################################

mkdir nordvpn -p
cd nordvpn

sudo wget  wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo dpkg -i nordvpn-release_1.0.0_all.deb

sudo apt update
sudo apt install nordvpn -y

nordvpn login
# Make sure that nordvnp connect is added to restart script
# @reboot nordvpn connect
# Check, doesn't seem to start VPN up
sudo nano /etc/rc.local

################################
############ Deluge ############
################################

sudo apt-get install deluge -y
