FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/mysql.yml /var/playbooks/mysql.yml
ADD playbooks/roles/mysql /var/playbooks/roles/mysql

RUN cd /var/playbooks && ansible-playbook mysql.yml -e 'skip_config=true'

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook mysql.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$MYSQL_OPT)'\"" >> /usr/bin/container-config.sh && \
    echo "tail -f /var/log/mysqld.log" >> /usr/bin/container-services.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

