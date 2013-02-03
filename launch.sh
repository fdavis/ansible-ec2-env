#!/bin/bash

# quit script on cmd fail
set -e

ansible-playbook -v bring-up/setup.yml -i inv/default
