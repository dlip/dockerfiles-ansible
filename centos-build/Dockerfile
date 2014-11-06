FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/build-essential /var/playbooks/roles/build-essential

RUN echo '    - { role: build-essential }' >> /var/playbooks/docker.yml

RUN container-install.sh
