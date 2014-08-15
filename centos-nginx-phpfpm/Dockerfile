FROM       dlip/centos-nginx
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD playbooks/phpfpm.yml /var/playbooks/phpfpm.yml
ADD playbooks/roles/phpfpm /var/playbooks/roles/phpfpm

RUN cd /var/playbooks && ansible-playbook phpfpm.yml -e 'skip_config=true'

ADD index.php /app/public/index.php

ENV NGINX_OPT {\
"nginx_sites":[{\
  "server":{\
    "file_name" : "phpfpm",\
    "listen" : "80",\
    "root" : "/app/public",\
    "location1" : {\
      "name" : "/",\
      "try_files" : "$uri $uri/ @router",\
      "index" : "index.php index.html index.htm",\
      "error_page 403" : "= @router",\
      "error_page 404" : "= @router"\
    },\
    "location2" : {\
      "name" : "@router",\
      "rewrite" : "^(.*)$ /index.php?$1"\
    },\
    "location3" : {\
      "name" : "~ \\.php$",\
      "include" : "/etc/nginx/fastcgi_params",\
      "fastcgi_pass" : "127.0.0.1:9000",\
      "fastcgi_index" : "index.php",\
      "fastcgi_param" : "SCRIPT_FILENAME /app/public$fastcgi_script_name"\
    }\
  }\
}]\
}

RUN echo "bash -c \"cd /var/playbooks && ansible-playbook phpfpm.yml -e 'skip_install=true' -e '\$(sed \"s/~~/,/g\" <<< \$PHPFPM_OPT)'\"" >> /usr/bin/container-config.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]

