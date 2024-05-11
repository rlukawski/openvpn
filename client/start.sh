#!/bin/sh
. ./.env
ansible-playbook -i hosts client.yml
