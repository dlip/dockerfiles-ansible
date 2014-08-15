FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/nginx.yml /var/playbooks/nginx.yml
ADD playbooks/roles/nginx /var/playbooks/roles/nginx

RUN cd /var/playbooks && ansible-playbook nginx.yml -e 'skip_config=true'

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook nginx.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$NGINX_OPT)'\"" >> /usr/bin/container-config.sh && \
    echo "tail -f /var/log/nginx/*.log" >> /usr/bin/container-services.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

