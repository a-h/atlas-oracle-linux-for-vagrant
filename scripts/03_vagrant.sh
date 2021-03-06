#!/bin/bash

# Set the date of the box build.
date > /etc/vagrant_box_build_time

# Installing vagrant SSH keys.
mkdir -pm 700 /home/vagrant/.ssh
curl -L https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

# Customize the message of the day.
echo 'Development Environment' > /etc/motd
