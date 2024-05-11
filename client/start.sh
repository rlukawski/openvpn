#!/bin/sh
. ./.env
ansible-playbook -i hosts ansible.yml
