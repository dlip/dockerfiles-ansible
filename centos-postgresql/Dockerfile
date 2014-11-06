FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/postgresql /var/playbooks/roles/postgresql

RUN echo '    - { role: postgresql }' >> /var/playbooks/docker.yml
RUN echo "tail -f /var/log/pgsql" >> /usr/bin/container-services.sh

RUN container-install.sh

EXPOSE 5432
