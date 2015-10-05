FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/dlip.logstash-forwarder /var/playbooks/roles/dlip.logstash-forwarder

RUN echo '    - { role: dlip.logstash-forwarder }' >> /var/playbooks/docker.yml

RUN mkdir -p "/var/log/logstash-forwarder" && touch "/var/log/logstash-forwarder/dummy.log"
RUN echo "tail -f /var/log/logstash-forwarder/*" >> /usr/bin/container-services.sh

RUN container-install.sh

EXPOSE 5432
