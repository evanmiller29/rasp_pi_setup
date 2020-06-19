sudo apt update
sudo apt autoclean

cd ..
mkdir installed_shiz -p
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
########### Arduino ############
################################

mkdir arduino -p
