FROM nova-base

ENV container docker

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y nova-api python-memcache
RUN apt autoremove

COPY start.sh /start.sh
COPY init.sh /init.sh
COPY nova.db /nova.db
COPY bootstrap.sh /bootstrap.sh

CMD ["/start.sh"]
