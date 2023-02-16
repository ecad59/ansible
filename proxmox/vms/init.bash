#!bin/bash

set -x
VMMAIN_HOSTNAME=""
VMWORKER1_HOSTNAME=""
VMWORKER2_HOSTNAME=""

TAILSCALE_AUTH_KEY=""

TAILSCALE_MAIN=""
TAILSCALE_WORKER1=""
TAILSCALE_WORKER2=""

sed -i -e "s/##TAILSCALE_MAIN##/$TAILSCALE_MAIN/g" files/server-main.cnf files/server-worker1.cnf files/server-worker2.cnf
sed -i -e "s/##TAILSCALE_WORKER1##/$TAILSCALE_WORKER1/g" files/server-main.cnf files/server-worker1.cnf files/server-worker2.cnf
sed -i -e "s/##TAILSCALE_WORKER2##/$TAILSCALE_WORKER2/g" files/server-main.cnf files/server-worker1.cnf files/server-worker2.cnf

sed -i -e "s/##VMMAIN_HOSTNAME##/$VMMAIN_HOSTNAME/g" playbook.yaml
sed -i -e "s/##VMWORKER1_HOSTNAME##/$VMWORKER1_HOSTNAME/g" playbook.yaml
sed -i -e "s/##VMWORKER2_HOSTNAME##/$VMWORKER2_HOSTNAME/g" playbook.yaml
sed -i -e "s/##TAILSCALE_AUTH_KEY##/$TAILSCALE_AUTH_KEY/g" playbook.yaml
sed -i -e "s/##TAILSCALE_MAIN##/$TAILSCALE_MAIN/g" playbook.yaml
sed -i -e "s/##TAILSCALE_WORKER1##/$TAILSCALE_WORKER1/g" playbook.yaml
sed -i -e "s/##TAILSCALE_WORKER2##/$TAILSCALE_WORKER2/g" playbook.yaml

echo "Init done."

ansible-playbook -i inventory.yaml playbook.yaml