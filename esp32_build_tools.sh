# https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-setup-scratch.html

mkdir ~/Arduino/hardware/espressif/esp32/tools -p

sudo apt-get install git wget libncurses-dev flex bison gperf python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache libffi-dev libssl-dev dfu-util

sudo apt-get install gawk gperf grep gettext python python-dev automake bison flex texinfo help2man libtool libtool-bin make -y

cd ~/Arduino/hardware/espressif/esp32/tools

sudo apt-get install libncurses5-dev libncursesw5-dev

git clone https://github.com/espressif/crosstool-NG.git
cd crosstool-NG
git checkout esp-2020r1
git submodule update --init
./bootstrap && ./configure --enable-local && make

#To create a toolchain with support for 64-bit time_t, you need to
#remove the --enable-newlib-long-time_t option from the crosstool-#NG/samples/xtensa-esp32-elf/crosstool.config file in 33 and 43 #lines.

./ct-ng xtensa-esp32-elf
./ct-ng build
chmod -R u+w builds/xtensa-esp32-elf

#/home/ubuntu/Desktop/installed_shiz/arduino-1.8.12/hardware/espressif/esp32/tools/crosstool-NG/builds/xtensa-esp32-elf

