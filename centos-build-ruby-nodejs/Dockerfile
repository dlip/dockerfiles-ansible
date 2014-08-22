FROM       dlip/centos-build-ruby
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/epel /var/playbooks/roles/epel

ADD playbooks/nodejs.yml /var/playbooks/nodejs.yml
ADD playbooks/roles/nodejs /var/playbooks/roles/nodejs

RUN cd /var/playbooks && ansible-playbook nodejs.yml

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

