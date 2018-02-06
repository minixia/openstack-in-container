FROM openstack-base

ENV container docker

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y keystone apache2 libapache2-mod-wsgi
RUN apt autoremove

RUN mkdir -p /var/lock

COPY start.sh /start.sh
COPY keystone.db /keystone.db
COPY init.sh /init.sh
COPY bootstrap.sh /bootstrap.sh

CMD ["/start.sh"]
