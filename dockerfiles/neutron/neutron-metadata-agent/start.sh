#!/bin/bash

set -ex

mkdir -p /var/lock/neutron /var/log/neutron /var/lib/neutron

neutron-metadata-agent --config-file /etc/neutron/neutron.conf --config-file /etc/neutron/metadata_agent.ini
