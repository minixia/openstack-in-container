#!/bin/bash

#Create Database
sed -i "s/KEYSTONE_DBPASS/${KEYSTONE_DBPASS}/g" /keystone.db
mysql -hdb -uroot -p${MYSQL_ROOT_PASSWORD} < /keystone.db

#Populate the Identity service database
keystone-manage db_sync

#Initialize Fernet key repositories
chmod 777 /etc/keystone/fernet-keys
keystone-manage fernet_setup --keystone-user keystone --keystone-group keystone
keystone-manage credential_setup --keystone-user keystone --keystone-group keystone
chmod 755 /etc/keystone/fernet-keys
