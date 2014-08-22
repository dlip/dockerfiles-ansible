FROM       dlip/centos-build-ruby
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/rails.yml /var/playbooks/rails.yml
ADD playbooks/roles/rails /var/playbooks/roles/rails

RUN cd /var/playbooks && ansible-playbook rails.yml

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

