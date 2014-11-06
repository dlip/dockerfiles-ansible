FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/epel /var/playbooks/roles/epel
ADD playbooks/roles/nodejs /var/playbooks/roles/nodejs

RUN echo '    - { role: nodejs }' >> /var/playbooks/docker.yml

RUN container-install.sh
