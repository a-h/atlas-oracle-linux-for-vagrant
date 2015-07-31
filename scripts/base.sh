#!/bin/bash

# Update the box
yum -y update >/dev/null

# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Remove 5s grub timeout to speed up booting
# Work out how to do this on Redhat later.
# sed -i 's/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/' /etc/default/grub
# grub2-mkconfig -o /boot/grub2/grub.cfg
