#!/bin/bash

set -ex

mkdir -p /var/lock/nova /var/log/nova /var/lib/nova/instances

nova-compute --config-file /etc/nova/nova.conf --config-file /etc/nova/nova-compute.conf
