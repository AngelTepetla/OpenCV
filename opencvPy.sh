######################################
#   OpenCV  Raspberry Pi | devOne    #
#            Ángel Tepetla           #
######################################


# |                SCRIPT PROVADO EN                     |
# |------------------------------------------------------|
# | OS               | OpenCV       | Test | Ultimo test |
# |------------------|--------------|------|-------------|
# | Ubuntu 16.04 LTS | OpenCV 3.3.1 | OK   | 22 Abr 2019 |


# VERSION A INSTALAR
OPENCV_VERSION='2.4.9'


# 1. ACTUALIZACION DEL SISTEMA
sudo apt-get update
sudo apt-get upgrade


# 2. INSTALACION DE DEPENDENCIAS
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libjpeg8 libjpeg8-dev libtiff4-dev libjasper-dev libpng12-0 libpng12-dev
sudo apt-get install libpng++-dev libpng3 libpnglite-dev zlib1g-dbg zlib1g zlib1g-dev pngtools libtiff4-dev libtiff4 libtiffxx0c2 libtiff-tools libeigen3-dev

sudo apt-get install libgtk2.0-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libatlas-base-dev gfortran

sudo apt-get install libjpeg-progs ffmpeg libavcodec-dev libavcodec53 libavformat53 libavformat-dev libgstreamer0.10-0-dbg libgstreamer0.10-0 libgstreamer0.10-dev libxine1-ffmpeg libxine-dev libxine1-bin libunicap2 libunicap2-dev swig libv4l-0 libv4l-dev libgtk2.0-dev


# Python:
sudo apt-get install -y python-dev python-tk python-numpy

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

sudo apt-get install python2.7-dev
pip install numpy


# 3. INSTALACION
sudo apt-get install -y unzip wget
wget https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip
unzip ${OPENCV_VERSION}.zip
cd opencv-2.4.9
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_NEW_PYTHON_SUPPORT=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON  -D BUILD_EXAMPLES=ON ..
make -j4
sudo make install
sudo ldconfig
