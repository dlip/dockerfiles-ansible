FROM       centos:centos6
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v6.5 updated 2014.08.14

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

RUN yum -y install ansible && \
    yum clean all

ADD hosts /etc/ansible/hosts
ADD scripts/ /usr/bin

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
