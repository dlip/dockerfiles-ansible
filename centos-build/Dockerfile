FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/build.yml /var/playbooks/build.yml
ADD playbooks/roles/build-essential /var/playbooks/roles/build-essential

RUN cd /var/playbooks && ansible-playbook build.yml

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

