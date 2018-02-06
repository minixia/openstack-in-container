#!/bin/bash

source /tmp/admin-openrc

openstack user create --domain default --password ${GLANCE_PASS} glance
openstack role add --project service --user glance admin
openstack service create --name glance \
  --description "OpenStack Image" image
openstack endpoint create --region RegionOne image public http://glance-api:9292
openstack endpoint create --region RegionOne image internal http://glance-api:9292
openstack endpoint create --region RegionOne image admin http://glance-api:9292
