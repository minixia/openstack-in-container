#!/bin/bash

source /tmp/admin-openrc

openstack user create --domain default --password ${NOVA_PASS} nova
openstack role add --project service --user nova admin
openstack service create --name nova \
  --description "OpenStack Compute" compute
openstack endpoint create --region RegionOne \
  compute public http://nova-api:8774/v2.1
openstack endpoint create --region RegionOne \
  compute internal http://nova-api:8774/v2.1
openstack endpoint create --region RegionOne \
  compute admin http://nova-api:8774/v2.1

openstack user create --domain default --password ${PLACEMENT_PASS} placement
openstack role add --project service --user placement admin
openstack service create --name placement --description "Placement API" placement
openstack endpoint create --region RegionOne placement public http://nova-placement-api:8778
openstack endpoint create --region RegionOne placement internal http://nova-placement-api:8778
openstack endpoint create --region RegionOne placement admin http://nova-placement-api:8778
