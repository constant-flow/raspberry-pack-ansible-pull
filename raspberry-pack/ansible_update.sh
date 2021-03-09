#!/bin/bash

# --- load environment variables ---
set -a
. /home/pi/.env
set +a

# --- run playbook from remote repo ---
ansible-pull -U $ANSIBLE_PULL_REPOSITORY -i /home/pi/ansible_pull/hosts $ANSIBLE_PULL_PLAYBOOK_PATH