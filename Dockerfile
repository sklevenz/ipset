FROM ubuntu:18.04

RUN \
  apt-get update && \
  apt-get install -y curl && \
  apt-get install -y iputils-ping && \
  apt-get install -y iproute2 && \
  apt-get install -y sudo && \
  apt-get install -y iptables && \
  apt-get install -y ipset && \
  apt-get install -y net-tools && \
  ls -al

ENV HOME /root

WORKDIR /root

ADD ./klaeff-ping.sh /root/klaeff-ping.sh
ADD ./google-ping.sh /root/google-ping.sh
ADD ./config-on.sh /root/config-on.sh
ADD ./config-off.sh /root/config-off.sh


CMD ["bash"]
