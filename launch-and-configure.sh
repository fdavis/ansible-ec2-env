#!/bin/bash
ansible-playbook bring-up/setup.yml -i inv/default
ansible-playbook configure-fireball.yml
ansible-playbook configure-nx-servers.yml
