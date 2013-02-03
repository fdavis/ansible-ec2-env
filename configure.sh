#!/bin/bash

# quit script on cmd fail
set -e

ansible-playbook -v all-servers/configure-standard-pkgs.yml
ansible-playbook -v ntp-servers/configure-ntp-servers.yml
ansible-playbook -v all-servers/configure-ntpd.yml
ansible-playbook -v nx-servers/configure-nx-servers.yml
ansible-playbook -v c9-servers/configure-c9-servers.yml
