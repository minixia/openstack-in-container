FROM glance-base

ENV container docker

RUN apt update
RUN apt install python-memcache

COPY start.sh /start.sh
COPY glance.db /glance.db
COPY init.sh /init.sh
COPY bootstrap.sh /bootstrap.sh

VOLUME ["/var/lib/glance/images"]

CMD ["/start.sh"]
