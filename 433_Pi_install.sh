#! /bin/bash
#Run as root user
#Install dependencies
sudo apt-get update
sudo apt-get install libtool libusb-1.0.0-dev librtlsdr-dev rtl-sdr doxygen git cmake -y

#rtl_433 git clone
git clone https://github.com/merbanan/rtl_433.git

#Generate the makefile with cmake
cd rtl_433
mkdir build
cd build
cmake ../

make

#Install it
sudo make install
