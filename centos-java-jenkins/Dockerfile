FROM       dlip/centos-java
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/jenkins.yml /var/playbooks/jenkins.yml
ADD playbooks/roles/jenkins /var/playbooks/roles/jenkins

RUN cd /var/playbooks && ansible-playbook jenkins.yml -e 'skip_config=true'

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook jenkins.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$JENKINS_OPT)'\"" >> /usr/bin/container-config.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

