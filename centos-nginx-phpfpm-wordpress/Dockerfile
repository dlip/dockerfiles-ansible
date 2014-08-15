FROM       dlip/centos-nginx-phpfpm
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/wordpress.yml /var/playbooks/wordpress.yml
ADD playbooks/roles/wordpress /var/playbooks/roles/wordpress

RUN cd /var/playbooks && ansible-playbook wordpress.yml -e 'skip_config=true'

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook wordpress.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$WORDPRESS_OPT)'\"" >> /usr/bin/container-config.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

