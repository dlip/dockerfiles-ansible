FROM       dlip/centos-build
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/ruby.yml /var/playbooks/ruby.yml
ADD playbooks/roles/ruby /var/playbooks/roles/ruby

RUN cd /var/playbooks && ansible-playbook ruby.yml && rm -f /root/ruby-2.1.0.tar && rm -rf /root/ruby-2.1.0

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

