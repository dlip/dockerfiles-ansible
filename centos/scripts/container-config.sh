#!/bin/bash

cd /var/playbooks && ansible-playbook docker.yml -e 'skip_install=true'
