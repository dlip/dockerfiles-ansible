FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/remi /var/playbooks/roles/remi

ADD playbooks/php.yml /var/playbooks/php.yml
ADD playbooks/roles/php /var/playbooks/roles/php

RUN cd /var/playbooks && ansible-playbook php.yml -e 'skip_config=true'

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook php.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$PHP_OPT)'\"" >> /usr/bin/container-config.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

