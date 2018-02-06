#!/bin/bash

#Create Database
sed -i "s/NEUTRON_DBPASS/${NEUTRON_DBPASS}/g" /neutron.db
mysql -hdb -uroot -p${MYSQL_ROOT_PASSWORD} < /neutron.db

#Populate the service database
neutron-db-manage --config-file /etc/neutron/neutron.conf --config-file /etc/neutron/plugins/ml2/ml2_conf.ini upgrade head
