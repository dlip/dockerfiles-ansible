FROM       centos:centos6
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v6.5 updated 2014.11.04

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
 
RUN yum -y update && yum -y install ansible sudo tar git nc && yum clean all

ADD hosts /etc/ansible/hosts
ADD scripts/ /usr/bin

ADD docker.yml /var/playbooks/docker.yml

#service announcements
EXPOSE 9811

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
