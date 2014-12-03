FROM       dlip/centos-php
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/apache /var/playbooks/roles/apache
RUN echo '    - { role: apache }' >> /var/playbooks/docker.yml

RUN echo "tail -f /var/log/httpd/*" >> /usr/bin/container-services.sh

RUN container-install.sh

EXPOSE 80
EXPOSE 443
