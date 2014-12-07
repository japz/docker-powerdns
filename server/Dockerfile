FROM centos:latest

EXPOSE 53/tcp
EXPOSE 53/udp

RUN yum install -y epel-release \
    && yum install -y pdns pdns-backend-* \
    && rm -rf /var/cache/yum/*

ADD run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT /run.sh

