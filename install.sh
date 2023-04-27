#!/bin/bash
PD=`pwd`
INSTALL_DIR=$PD"/Messenger"
echo $INSTALL_DIR
mkdir -p $INSTALL_DIR
tar xvf $PD/Messenger-linux-x64.tar.xz -C $INSTALL_DIR --strip 1
/bin/bash $PD/shortcut.sh
