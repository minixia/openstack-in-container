#!/bin/bash

set -ex

source /etc/apache2/envvars
rm -rf /var/run/apache2/*
APACHE_DIR="apache2"
mkdir -p /var/log/apache2

apache2 -DFOREGROUND
