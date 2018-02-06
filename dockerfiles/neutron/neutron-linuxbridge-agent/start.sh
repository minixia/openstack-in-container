#!/bin/bash

set -ex

mkdir -p /var/lock/neutron /var/log/neutron /var/lib/neutron

neutron-linuxbridge-agent --config-file /etc/neutron/neutron.conf --config-file /etc/neutron/plugins/ml2/ml2_conf.ini --config-file /etc/neutron/plugins/ml2/linuxbridge_agent.ini
