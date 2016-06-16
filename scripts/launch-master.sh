#!/usr/bin/env bash

BASE=/opt/git/ansible-deploys
VERBOSITY='-vvvv'

source /opt/git/ansible/hacking/env-setup
# /opt/git/ansible/bin/ansible
ANSIBLE_PLAYBOOK=`which ansible-playbook`

echo $ANSIBLE_PLAYBOOK

ansible-playbook --version

$ANSIBLE_PLAYBOOK ${VERBOSITY} -i ${BASE}/inventory/ec2.py ${BASE}/deployworkstation.yml
