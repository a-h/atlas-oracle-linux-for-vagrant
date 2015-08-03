#!/bin/bash

yum -y install bzip2
yum -y install kernel-uek-devel
yum -y install kernel-uek-devel-3.8.13-55.1.6.el7uek.x86_64
yum -y install kernel-devel
# Reboot in case the kernel has been rebuilt.
reboot
sleep 60
mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
# Keep the file around in case we need to reinstall for some reason.
# rm -rf /home/vagrant/VBoxGuest*.iso
# This does a reinstallation.
# /etc/init.d/vboxadd setup