FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/postgresql.yml /var/playbooks/postgresql.yml
ADD playbooks/roles/postgresql /var/playbooks/roles/postgresql

RUN cd /var/playbooks && ansible-playbook postgresql.yml -e 'skip_config=true'

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook postgresql.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$POSTGRESQL_OPT)'\"" >> /usr/bin/container-config.sh &&\
    echo "tail -f /var/log/pgsql" >> /usr/bin/container-services.sh

EXPOSE 5432

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

