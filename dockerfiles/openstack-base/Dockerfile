FROM ubuntu:16.04

ENV container docker

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository cloud-archive:pike
RUN apt update && apt dist-upgrade -y
RUN apt install -y iproute2 bridge-utils inetutils-ping
RUN apt install -y vim less
RUN apt install -y python-openstackclient
RUN apt install -y mariadb-client python-pymysql
RUN apt autoremove
