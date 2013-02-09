#!/bin/bash

# quit script on cmd fail
set -e

ansible-playbook -v configure-all.yml
