#!/bin/bash

# quit script on cmd fail
set -e

ansible-playbook bring-up/setup.yml -i inv/default
ansible-playbook all-servers/configure-fireball.yml
ansible-playbook ntp-servers/configure-ntp-servers.yml
ansible-playbook all-servers/configure-ntpd.yml
ansible-playbook nx-servers/configure-nx-servers.yml
