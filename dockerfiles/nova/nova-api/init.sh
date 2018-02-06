#!/bin/bash

#Create Database
sed -i "s/NOVA_DBPASS/${NOVA_DBPASS}/g" /nova.db
mysql -hdb -uroot -p${MYSQL_ROOT_PASSWORD} < /nova.db

#Populate the compute service database
nova-manage api_db sync

nova-manage cell_v2 map_cell0
nova-manage cell_v2 create_cell --name=cell1 --verbose

nova-manage db sync
nova-manage db online_data_migrations
