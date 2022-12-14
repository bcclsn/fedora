#!/bin/bash

# mount snapshot folder #
mount -t btrfs -o compress=zstd:3,subvol=/ /dev/sda2 /mnt/btrfs

# remove the snapshot #
cd /mnt/btrfs/snap-root
btrfs subvolume delete "$(ls -1 | head -n -2)"
cd /mnt/btrfs/snap-home
btrfs subvolume delete "$(ls -1 | head -n -2)"
cd ~/

# update grup.cfg (grub-btrfs) #
# enable if you use the script standalone
# grub2-mkconfig -o /boot/grub2/grub.cfg

# umount and exit #
umount /mnt/btrfs
exit 0

################################################
##                                bcclsn v1.1 ##
################################################
