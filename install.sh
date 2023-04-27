#!/bin/sh
set -e
WORKING_DIR=`pwd`
THIS_PATH=`readlink -f $0`
cd `dirname ${THIS_PATH}`
FULL_PATH=`pwd`/Lotion
cd ${WORKING_DIR}
cat <<EOS > Messenger.desktop
[Desktop Entry]
Name=Messenger
Name[en_US]=Messenger
Comment=Unofficial Facebook Messenger application for Linux
Exec="${FULL_PATH}/Messenger"
Terminal=false
Categories=Social
Type=Application
Icon=${WORKING_DIR}/icon.png
StartupWMClass=Messenger
EOS
chmod +x Messenger.desktop
## This can be updated if this path is not valid. 
cp -p Messenger.desktop ~/.local/share/applications
