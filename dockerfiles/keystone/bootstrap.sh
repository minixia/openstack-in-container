#!/bin/bash

#Bootstrap the Identity service
keystone-manage bootstrap --bootstrap-password ${ADMIN_PASS} \
  --bootstrap-admin-url http://keystone:35357/v3/ \
  --bootstrap-internal-url http://keystone:5000/v3/ \
  --bootstrap-public-url http://keystone:5000/v3/ \
  --bootstrap-region-id RegionOne

source /tmp/admin-openrc

openstack project create --domain default \
  --description "Service Project" service

openstack role create user
