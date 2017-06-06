#!/usr/bin/env bash

FRANZ_VERSION="4.0.4"
FRANZ_TAR="Franz-linux-x64-$FRANZ_VERSION.tgz"
FRANZ_INSTALL_PATH="/opt/franz"
FRANZ_APP_FILE="/usr/share/applications/franz.desktop"

wget https://github.com/meetfranz/franz-app/releases/download/$FRANZ_VERSION/$FRANZ_TAR

rm -rf $FRANZ_INSTALL_PATH
mkdir -p $FRANZ_INSTALL_PATH

tar -C $FRANZ_INSTALL_PATH -zxvf $FRANZ_TAR

rm -f $FRANZ_TAR

cp $ROOT/install/assets/franz/icon.png $FRANZ_INSTALL_PATH/franz_icon.png

# Create a desktop app launcher
rm -f $FRANZ_APP_FILE

cat > $FRANZ_APP_FILE <<EOL
[Desktop Entry]
Version=$FRANZ_VERSION
Encoding=UTF-8
Name=Franz
GenericName=Franz Client for Linux
Comment=Franz is a free messaging app / former Emperor of Austria and combines chat & messaging services into one application.
Exec=$FRANZ_INSTALL_PATH/Franz
Icon=$FRANZ_INSTALL_PATH/franz_icon.png
Terminal=false
Type=Application
StartupNotify=true
Categories=GNOME;GTK;Network;InstantMessaging;
EOL
