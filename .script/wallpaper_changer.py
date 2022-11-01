#-------------------------------------------------------------------------------
# Copyright: (c) Alessandro Salvatore Buccato 
#-------------------------------------------------------------------------------
# 
# File Name: wallpaper_changer.py
# File type: gnome shell script
#

''' Revision Hystory
#-------------------------------------------------------------------------------
# Revision:     1.0
# Author:       bcclsn
# Date:         01/11/2022
# Description:  First Release
#-------------------------------------------------------------------------------
'''

''' Description
#-------------------------------------------------------------------------------
Description:
Randomly change the wallpaper

Requirements
-
#-------------------------------------------------------------------------------
'''

import os, time, random

img_extension = ['png', 'jpeg', 'jpg', 'jfif']
source_path = '/home/bcclsn/Immagini/wallpaper/'
shuffle_time_in_hour = 2

images = os.listdir(source_path)
not_images = []
for _element in images:
    if _element is not False:
        ext = _element.split('.')[len(_element.split('.')) - 1]
        if ext not in img_extension:
            not_images.append(_element)
        
        images = res = [_i for _i in images if _i not in not_images]
        del not_images[:]
    else:
        os.system('gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/f36/default/f36-01-day.png')
        os.system('gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/f36/default/f36-02-night.png')
        # TO DO: use "Default value" instead of uri file

while True: 
    random_file = source_path + images[random.randint(0, len(images)-1)]
    os.system('gsettings set org.gnome.desktop.background picture-uri-dark file://{:s}'.format(random_file)) 
    time.sleep(3600*shuffle_time_in_hour) 
