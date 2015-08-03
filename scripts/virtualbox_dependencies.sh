#!/bin/bash

yum -y install bzip2
yum -y install kernel-uek-devel
yum -y install kernel-uek-devel-3.8.13-55.1.6.el7uek.x86_64
yum -y install kernel-devel
# Reboot in case the kernel has been rebuilt.
reboot
sleep 60