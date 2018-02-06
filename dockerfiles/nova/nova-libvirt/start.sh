#!/bin/bash

set -ex

if [[ -f /var/run/libvirtd.pid ]]; then
   test -d /proc/$(< /var/run/libvirtd.pid) && \
   ( echo "Libvirtd daemon is running" && exit 10 )
fi

rm -f /var/run/libvirtd.pid

if [[ -c /dev/kvm ]]; then
    chmod 666 /dev/kvm
fi

exec libvirtd 
