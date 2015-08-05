#!/bin/bash

# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Remove 5s grub timeout to speed up booting
# Work out how to do this on Redhat later.
# sed -i 's/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/' /etc/default/grub
# grub2-mkconfig -o /boot/grub2/grub.cfg

# Setup the proxy
# export http_proxy=10.0.2.2:3128
# export HTTP_PROXY=10.0.2.2:3128
# export https_proxy=10.0.2.2:3128
# export HTTPS_PROXY=10.0.2.2:3128

# Setup the yum proxy.
# echo 'proxy=10.0.2.2:3128' >> yum.conf

yum -y update >/dev/null
reboot
sleep 60
