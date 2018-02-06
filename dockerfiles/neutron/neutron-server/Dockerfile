FROM neutron-base

ENV container docker

COPY start.sh /start.sh
COPY neutron.db /neutron.db
COPY init.sh /init.sh
COPY bootstrap.sh /bootstrap.sh

CMD ["/start.sh"]
