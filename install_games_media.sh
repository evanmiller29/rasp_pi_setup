sudo apt update
sudo apt autoclean

cd ..
mkdir installed_shiz
cd installed_shiz -p

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
sudo nano /home/pi/.bashrc

cd ..

################################
############ Deluge ############
################################

sudo apt-get install deluge -y

################################
##### Red alert (Open RA) ######
################################
# https://github.com/OpenRA/OpenRA/wiki/OpenRA-on-RaspberryPi

mkdir openRA -p


sudo apt install apt-transport-https dirmngr gnupg ca-certificates -y
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-raspbianbuster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

sudo apt install mono-devel libfreetype6 libopenal1 liblua5.1-0 libsdl2-2.0-0 xdg-utils zenity wget -y
cd OpenRA

wget https://github.com/OpenRA/OpenRA/releases/download/release-20200503/OpenRA-release-20200503-source.tar.bz2
tar xvjf /home/pi/Desktop/installed_shiz/openRA/OpenRA-release-20200503-source.tar.bz2
make

# To run go to openRA directory and run:
# sudo sh launch-game.sh

cd ..
