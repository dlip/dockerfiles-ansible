FROM       dlip/centos-build
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/ruby /var/playbooks/roles/ruby

RUN echo '    - { role: ruby }' >> /var/playbooks/docker.yml

RUN container-install.sh
