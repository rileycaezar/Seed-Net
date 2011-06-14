#!/bin/sh
ARCH=$1
DIST=backfire
VER=10.03
NAME=OpenWrt-ImageBuilder-$ARCH-for-Linux-i686
PACKAGES="openssl-util wget px5g"

wget http://downloads.openwrt.org/$DIST/$VER/$ARCH/$NAME.tar.bz2
tar -xvjf $NAME.tar.bz2
cd $NAME
make image PACKAGES="$PACKAGES" FILES=../files/
mv bin/$ARCH/* ../output/
cd ..
echo Finished getting $ARCH
