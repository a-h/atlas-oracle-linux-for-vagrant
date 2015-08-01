#!/bin/bash

yum -y install bzip2
yum -y install kernel-uek-devel
yum -y install kernel-uek-devel-3.8.13-55.1.6.el7uek.x86_64
yum -y install kernel-devel
mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso
