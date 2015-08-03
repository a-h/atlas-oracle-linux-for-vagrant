#!/bin/bash

mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
# Keep the file around in case we need to reinstall for some reason.
# rm -rf /home/vagrant/VBoxGuest*.iso
# This does a reinstallation.
# /etc/init.d/vboxadd setup