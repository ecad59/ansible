#!bin/bash

set -x

MAIN_PASSWORD=""

MAIN_NAT_IP=""
WORKER1_NAT_IP=""
WORKER2_NAT_IP=""

MAIN_HOSTNAME =""
WORKER1_HOSTNAME=""
WORKER2_HOSTNAME=""

MAIN_NODE=""
WORKER1_NODE=""
WORKER2_NODE=""

MAIN_IP=""
WORKER1_IP=""
WORKER2_IP=""

MAIN_CI_USER=""
MAIN_CI_PASSWORD=""

WORKER1_CI_USER=""
WORKER1_CI_PASSWORD=""

WORKER2_CI_USER=""
WORKER2_CI_PASSWORD=""

VM_ID_MAIN=""
VM_ID_WORKER1=""
VM_ID_WORKER2=""

STORAGE=""
EMAIL=""
PORT_FORWARDING=""
BRIDGE=""

sed -i -e "s/##MAIN_PASSWORD##/$MAIN_PASSWORD/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##MAIN_NAT_IP##/$MAIN_NAT_IP/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER1_NAT_IP##/$WORKER1_NAT_IP/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER2_NAT_IP##/$WORKER2_NAT_IP/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##MAIN_HOSTNAME##/$MAIN_HOSTNAME/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER1_HOSTNAME##/$WORKER1_HOSTNAME/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER2_HOSTNAME##/$WORKER2_HOSTNAME/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##MAIN_NODE##/$MAIN_NODE/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER1_NODE##/$WORKER1_NODE/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER2_NODE##/$WORKER2_NODE/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##MAIN_IP##/$MAIN_IP/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER1_IP##/$WORKER1_IP/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER2_IP##/$WORKER2_IP/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##MAIN_CI_USER##/$MAIN_CI_USER/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##MAIN_CI_PASSWORD##/$MAIN_CI_PASSWORD/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##WORKER1_CI_USER##/$WORKER1_CI_USER/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER1_CI_PASSWORD##/$WORKER1_CI_PASSWORD/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##WORKER2_CI_USER##/$WORKER2_CI_USER/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##WORKER2_CI_PASSWORD##/$WORKER2_CI_PASSWORD/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##VM_ID_MAIN##/$VM_ID_MAIN/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##VM_ID_WORKER1##/$VM_ID_WORKER1/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##VM_ID_WORKER2##/$VM_ID_WORKER2/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

sed -i -e "s/##STORAGE##/$STORAGE/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##EMAIL##/$EMAIL/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##PORT_FORWARDING##/$PORT_FORWARDING/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts
sed -i -e "s/##BRIDGE##/$BRIDGE/g" main-playbook.yaml post-playbook.yaml scripts/join-cluster.sh files/hosts

echo "Init done."

ansible-playbook -i inventory.yaml main-playbook.yaml