#!/bin/bash

cd /var/playbooks && ansible-playbook docker.yml --skip-tags='install'
