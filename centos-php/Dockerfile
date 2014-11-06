FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/remi /var/playbooks/roles/remi
ADD playbooks/roles/php /var/playbooks/roles/php

RUN echo '    - { role: remi }' >> /var/playbooks/docker.yml
RUN echo '    - { role: php }' >> /var/playbooks/docker.yml

RUN container-install.sh
