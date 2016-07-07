#!/usr/bin/env bash

echo "==== Installing necessary pkgs ===="
apt-get update
apt-get install -y git ca-certificates python-setuptools ansible

echo "==== Export locale settings ===="
echo "export LANGUAGE=en_US.UTF-8" >> /home/vagrant/.bashrc
echo "export LANG=en_US.UTF-8" >> /home/vagrant/.bashrc
echo "export LC_ALL=en_US.UTF-8" >> /home/vagrant/.bashrc

