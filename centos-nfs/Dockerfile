FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/nfs /var/playbooks/roles/nfs

RUN echo '    - { role: nfs }' >> /var/playbooks/docker.yml

RUN container-install.sh

RUN echo "tail -f /var/log/btmp" >> /usr/bin/container-services.sh

EXPOSE 2049
