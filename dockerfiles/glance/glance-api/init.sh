#!/bin/bash

#Create Database
sed -i "s/GLANCE_DBPASS/${GLANCE_DBPASS}/g" /glance.db
mysql -hdb -uroot -p${MYSQL_ROOT_PASSWORD} < /glance.db

#Populate the service database
glance-manage db_sync
glance-manage db_load_metadefs
