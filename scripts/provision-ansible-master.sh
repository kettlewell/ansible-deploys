#!/usr/bin/env bash

ANSIBLE_PLAYBOOK=`which ansible-playbook`
BASE=/opt/git/ansible-deploys
VERBOSITY='-v'
TAGS='' #TAGS='--tags facts'
EV_COUNT="count=1"
#EV_GROUP="group_name=master_cluster"
EV_GROUP=''
EXTRA_VARS="-e ${EV_COUNT} ${EV_GROUP}"
PLAYBOOK=${BASE}/provision-master.yml
INVENTORY="-i ${BASE}/inventory/ec2.py"


$ANSIBLE_PLAYBOOK ${VERBOSITY} ${INVENTORY} ${TAGS} ${EXTRA_VARS} ${PLAYBOOK}


