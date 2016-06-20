#!/usr/bin/env bash

ANSIBLE_PLAYBOOK=`which ansible-playbook`
BASE=/opt/git/ansible-deploys
VERBOSITY='-v'
TAGS='--tags facts'
EV_COUNT="count=1"
EXTRA_VARS="-e ${EV_COUNT}"


PLAYBOOK=${BASE}/provision-slave.yml
INVENTORY="-i ${BASE}/inventory/ec2.py"

$ANSIBLE_PLAYBOOK ${VERBOSITY} ${INVENTORY}  ${TAGS} ${EXTRA_VARS} ${PLAYBOOK}



