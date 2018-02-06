#!/bin/bash

set -ex

mkdir -p /var/lock/neutron /var/log/neutron /var/lib/neutron

neutron-l3-agent --config-file /etc/neutron/neutron.conf --config-file /etc/neutron/l3_agent.ini --config-file /etc/neutron/plugins/ml2/ml2_conf.ini
