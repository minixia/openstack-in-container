#!/bin/bash

set -ex

mkdir -p /var/lock/nova /var/log/nova /var/lib/nova

nova-api --config-file /etc/nova/nova.conf
