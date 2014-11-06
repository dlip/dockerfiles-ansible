FROM       dlip/centos-php-apache
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/wordpress /var/playbooks/roles/wordpress
RUN echo '    - { role: wordpress }' >> /var/playbooks/docker.yml

RUN container-install.sh

