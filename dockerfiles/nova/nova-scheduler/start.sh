#!/bin/bash

set -ex

mkdir -p /var/lock/nova /var/log/nova /var/lib/nova

nova-scheduler --config-file /etc/nova/nova.conf
