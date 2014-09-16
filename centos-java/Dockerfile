FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/java.yml /var/playbooks/java.yml
ADD playbooks/roles/java /var/playbooks/roles/java

RUN cd /var/playbooks && ansible-playbook java.yml -e 'skip_config=true'

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook java.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$JAVA_OPT)'\"" >> /usr/bin/container-config.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

