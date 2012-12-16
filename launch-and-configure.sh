#!/bin/bash
ansible-playbook bring-up/setup.yml -i inv/default
ansible-playbook sshd/setup.yml
ansible-playbook nx/setup.yml
ansible-playbook install-tools/setup.yml
