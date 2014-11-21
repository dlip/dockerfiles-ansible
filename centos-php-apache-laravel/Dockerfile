FROM       dlip/centos-php-apache
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/roles/laravel /var/playbooks/roles/laravel
RUN echo '    - { role: laravel }' >> /var/playbooks/docker.yml

RUN container-install.sh
