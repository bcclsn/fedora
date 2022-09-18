#!/bin/bash

USER="bcclsn"

echo "Linking Dotfiles..."

cd /home/$USER/.local/share/applications 

rm code-oss.desktop freecad.desktop \
   spotify.desktop whatsapp.desktop \

# ln -s /home/$USER/.desktop/code-oss.desktop code-oss.desktop  
ln -s /home/$USER/.desktop/freecad.desktop freecad.desktop  
ln -s /home/$USER/.desktop/spotify.desktop spotify.desktop  
ln -s /home/$USER/.desktop/whatsapp.desktop whatsapp.desktop

sleep 5
echo "Done"

################################################
##                                bcclsn v1.0 ##
################################################
