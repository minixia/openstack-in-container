#!/bin/bash

source /tmp/admin-openrc

openstack user create --domain default --password ${NEUTRON_PASS} neutron
openstack role add --project service --user neutron admin
openstack service create --name neutron \
  --description "OpenStack Networking" network
openstack endpoint create --region RegionOne \
  network public http://neutron-server:9696
openstack endpoint create --region RegionOne \
  network internal http://neutron-server:9696
openstack endpoint create --region RegionOne \
  network admin http://neutron-server:9696
