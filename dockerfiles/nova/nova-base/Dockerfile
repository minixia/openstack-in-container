FROM openstack-base

ENV container docker

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y bridge-utils nova-common python-nova
RUN apt autoremove
