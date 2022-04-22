#!/bin/bash
echo "Karma Installer"
HOMEDIRECTORY=$(pwd)
INSTALLDIR=/usr/local

wget -nc ftp://ftp.atnf.csiro.au/pub/software/karma/karma-1.7.25-amd64_Linux_libc6.3.tar.bz2
wget -nc ftp://ftp.atnf.csiro.au/pub/software/karma/karma-1.7.25-common.tar.bz2

tar -jxvf karma-1.7.25-amd64_Linux_libc6.3.tar.bz2
tar -jxvf karma-1.7.25-common.tar.bz2

sudo mv karma-1.7.25 $INSTALLDIR
cd $INSTALLDIR
sudo mv karma-1.7.25 karma
cd $HOMEDIRECTORY

cat << EOF >> ~/.profile

. /usr/local/karma/.karmarc
export KARMABASE=/usr/local/karma
export PATH=\$PATH:\$KARMABASE/amd64_Linux_libc6.3/bin
export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:$\KARMABASE/amd64_Linux_libc6.3/lib
EOF

echo "Installation complete. Run source ~/.profile or restart to use Karma."
