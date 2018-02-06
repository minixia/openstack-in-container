FROM nova-base

ENV container docker

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y nova-compute
RUN apt autoremove

COPY start.sh /start.sh

CMD ["/start.sh"]
