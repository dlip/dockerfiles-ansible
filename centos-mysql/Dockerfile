FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/mysql /var/playbooks/roles/mysql

RUN echo '    - { role: mysql }' >> /var/playbooks/docker.yml
RUN echo "tail -f /var/log/mysqld.log" >> /usr/bin/container-services.sh

RUN container-install.sh

EXPOSE 3306
